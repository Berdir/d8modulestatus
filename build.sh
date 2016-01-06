#!/usr/bin/env bash


MYSQLPASS=${1:-d8modulestatus}
CONCURRENCY=${2:-2}

mkdir -p www-new
cp -rp assets www-new

# Build the make file.
chmod -R 777 internal
rm -r internal
drush make --working-copy --nocolor --force-complete project.make internal

# Install drupal
cd internal
drush si -y --nocolor --db-url=mysql://d8modulestatus:$MYSQLPASS@localhost/d8modulestatus minimal

# Enable simpletest and composer manager
drush en -y --nocolor simpletest composer_manager

# Temporary: Delete invalid composer.json files.
rm modules/metatag/composer.json

# Update composer dependencies

php ./modules/composer_manager/scripts/init.php
/usr/local/bin/composer drupal-update

# @todo Use mysql?
export SIMPLETEST_BASE_URL=http://d8modulestatus/
export SIMPLETEST_DB=sqlite://localhost//tmp/test.sqlite

# Loop over all projects.
for FOLDER in `cd modules; ls -d1 */`; do
  # Remove trailing / from foldername
  PROJECT=${FOLDER%%/}

  echo ""
  echo "=== Testing $PROJECT ==="
  echo ""

  # Prepare www folder.
  mkdir -p ../www-new/$PROJECT/simpletest
  ./vendor/bin/phpunit -c core/phpunit.xml.dist --log-junit=../www-new/$PROJECT/phpunit.xml modules/$PROJECT/
done

test_files=`find modules/ -name "*Test*.php" | grep src/Tests | paste -s -d,`

mkdir -p ../www-new/simpletest
php core/scripts/run-tests.sh --concurrency $CONCURRENCY --url http://d8modulestatus/ --xml ../www-new/simpletest --file "$test_files"

cd ..

rm -r www-old
mv www www-old
mv www-new www

php parse_results.php


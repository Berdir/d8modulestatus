#!/usr/bin/env bash

# Build the make file.
chmod -R 777 internal
rm -r internal
drush make --working-copy --nocolor --force-complete project.make internal

# Install drupal
cd internal
drush si -y --nocolor --db-url=mysql://d8modulestatus:d8modulestatus@localhost/d8modulestatus minimal

# Enable simpletest and composer manager
drush en -y --nocolor simpletest composer_manager

# Temporary: Delete invalid composer.json files.
find modules -name composer.json | xargs grep -L name 
find modules -name composer.json | xargs grep -L name | xargs rm

# Update composer dependencies
php ./modules/composer_manager/scripts/init.sh
cd core
/usr/local/bin/composer drupal-update
cd ..

# Define a mapping of non-standard test groups.
declare -A groupMap
groupMap[currency]=Currency
groupMap[google_analytics]="Google Analytics"
groupMap[payment]="Payment"

# Loop over all projects.
for FOLDER in `cd modules; ls -d1 */`; do
  # Remove trailing / from foldername
  PROJECT=${FOLDER%%/}
  # Set simpletest group from the group map, default to project name.
  GROUP=${groupMap[$PROJECT]:-$PROJECT}

  echo ""
  echo "=== Testing $PROJECT ==="
  echo ""

  # Prepare www folder.
  mkdir -p ../www-new/$PROJECT/simpletest
  phpunit -c core/phpunit.xml.dist --log-junit=../www-new/$PROJECT/phpunit.xml modules/$PROJECT/
  php core/scripts/run-tests.sh --concurrency 1 --url http://d8modulestatus/ --xml ../www-new/$PROJECT/simpletest "$GROUP"
done

cd ..

rm -r www-old
mv www www-old
mv www-new www

php parse_results.php


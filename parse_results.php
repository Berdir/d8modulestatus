<?php

require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment($loader);


$projects = array();
foreach (new DirectoryIterator('results') as $file_info) {
  if ($file_info->isDir() && !$file_info->isDot()) {
    $project = [
      'name' => $file_info->getFilename(),
      'phpunit' => [],
      'simpletest' => [],
    ];

    if (file_exists($file_info->getPathName() . '/phpunit.xml')) {
      $phpunit = simplexml_load_file($file_info->getPathName() . '/phpunit.xml');
      $project['phpunit']['assertions'] = (int) $phpunit->testsuite['assertions'];
      $project['phpunit']['failures'] = (int) $phpunit->testsuite['failures'];
      $project['phpunit']['errors'] = (int) $phpunit->testsuite['errrors'];
    }

    $project['simpletest'] = get_simpletest_results($file_info->getPathname());

    $projects[$project['name']] = $project;
  }
}

ksort($projects);

$index = $twig->render('index.html.twig', ['projects' => $projects, 'timestamp' => date('Y-m-d H:i:s')]);
file_put_contents('results/index.html', $index);


/**
 * Returns simpletest test results.
 *
 * @param $simpletest_dir
 *
 * @return array
 */
function get_simpletest_results($project_dir) {
  $results = [
    'assertions' => 0,
    'failures' => 0,
    'errors' => 0,
  ];
  $simpletest_dir = $project_dir . '/simpletest';
  if (is_dir($simpletest_dir)) {
    foreach (new DirectoryIterator($simpletest_dir) as $simpletest_file_info) {
      if ($simpletest_file_info->isFile()) {
        $simpletest_xml = simplexml_load_file($simpletest_file_info->getRealPath());
        $results['assertions'] += count($simpletest_xml->testcase);
        $results['failures'] += count($simpletest_xml->xpath('/testsuite/testcase/failure'));
        $results['errors'] += count($simpletest_xml->xpath('/testsuite/testcase/error'));
      }
    }
  }
  return $results;
}

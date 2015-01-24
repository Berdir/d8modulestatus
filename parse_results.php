<?php

require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment($loader);


$projects = array();
foreach (new DirectoryIterator('results') as $file_info) {
  if ($file_info->isDir() && !$file_info->isDot()) {
    $project = [
      'name' => $file_info->getFilename(),
    ];

    if (file_exists($file_info->getPathName() . '/phpunit.xml')) {
      $phpunit = simplexml_load_file($file_info->getPathName() . '/phpunit.xml');
      $project['phpunit']['assertions'] = (int) $phpunit->testsuite['assertions'];
      $project['phpunit']['failures'] = (int) $phpunit->testsuite['failures'];
      $project['phpunit']['errors'] = (int) $phpunit->testsuite['errrors'];
    }

    $projects[$project['name']] = $project;
  }
}

ksort($projects);

$index = $twig->render('index.html.twig', ['projects' => $projects]);
file_put_contents('results/index.html', $index);


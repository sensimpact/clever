<?php

$host = 'localhost';
$port = 8889;
$dbname = 'clever_test';
$dsn = "mysql:host=$host;port=$port;dbname=$dbname";
$username = 'clever';
$passwd = '5V/Hd]X?a#?xC3d';
$db = new PDO($dsn, $username, $passwd);

<?php

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

if ($link === FALSE) {
    die('Mysql Error:' . mysqli_connect_error());
}

$result = mysqli_query($link, 'SELECT `title` AS `naziv_proizvoda`, `quantity` AS `kolicina` FROM `products`');

if ($result === FALSE) {
    die('Mysql Error:' . mysqli_error($link));
}

$products = mysqli_fetch_all($result, MYSQLI_ASSOC);

print_r($products);
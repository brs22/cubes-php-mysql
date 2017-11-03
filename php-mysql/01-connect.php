<?php

// biblioteke:
//
// mysqli - funkcije koje pocinju sa mysqli_ (proceduralno orjentisana, mada moze i objektno orijentisana)
// PDO - objektno orjentisana biblioteka

$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

if ($link === FALSE) {
    die('Mysql Error:' . mysqli_connect_error());
}

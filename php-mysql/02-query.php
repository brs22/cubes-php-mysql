<?php
//konekcija - resurs koji je konekcija nad bazom
$link = mysqli_connect('127.0.0.1', 'cubes', 'cubes', 'cubesphp');

if ($link === FALSE) {
    die('Mysql Error:' . mysqli_connect_error());
}

//prosledjuje se resurs i onda query, koji izvrsava upit nad bazom da bi se dobio resurs nad rezultujucom tabelom
$result = mysqli_query($link, 'SELECT * FROM `products`');

if ($result === FALSE) {
    die('Mysql Error:' . mysqli_error($link)); //cita se poslednja greska sa mysqli_error
}

$products = mysqli_fetch_all($result, MYSQLI_ASSOC); //mysqli_fetch_all radi sa resursom nad rezultujucom tabelom i povlaci je kompletnu u niz nizova
                                    //MYSQLI_ASSOC vraca kao niz asocijativnih nizova - kljucevi su nazivi kolone

print_r($products);

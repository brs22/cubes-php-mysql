<?php

session_start();
require_once __DIR__ . '/models/m_users.php';

if(!isUserLoggedIn()) {
    header('location: /login.php');
    die();
}
require_once __DIR__ . '/models/m_categories.php';

if (empty($_GET['id'])) {
    die('Morate proslediti id');
}

$id = (int) $_GET['id'];

$category = categoriesFetchOneById($id);

if (empty($category)) {
    die('Izabrana kategorija ne postoji!');
}

if (isset($_POST["task"]) && $_POST["task"] == "delete") {

    categoriesDeleteOneById($id);

    header('location: /crud-category-list.php');
    die();
}

require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-category-delete.php';
require_once __DIR__ . '/views/layout/footer.php';

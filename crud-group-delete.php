<?php

session_start();
require_once __DIR__ . '/models/m_users.php';

if(!isUserLoggedIn()) {
    header('location: /login.php');
    die();
}

require_once __DIR__ . '/models/m_groups.php';

if (empty($_GET['id'])) {
    die('Morate proslediti id');
}

$id = (int) $_GET['id'];

$group = groupsFetchOneById($id);

if (empty($group)) {
    die('Izabrana grupa ne postoji!');
}

if (isset($_POST["task"]) && $_POST["task"] == "delete") {

    groupsDeleteOneById($id);

    header('location: /crud-group-list.php');
    die();
}

require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-group-delete.php';
require_once __DIR__ . '/views/layout/footer.php';

<?php

session_start();
require_once __DIR__ . '/models/m_users.php';

if(!isUserLoggedIn()) {
    header('location: /login.php');
    die();
}

require_once __DIR__ . '/models/m_users.php';

if(isset($_SESSION['system_message'])) {
    $systemMessage = $_SESSION['system_message'];
    
    unset($_SESSION['system_message']);
}

require_once __DIR__ . '/models/m_sections.php';

$sections = sectionsFetchAll();


require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-section-list.php';
require_once __DIR__ . '/views/layout/footer.php';

<?php
session_start();


require_once __DIR__ . '/models/m_news.php';
require_once __DIR__ . '/models/m_sections.php';

$id = (int)$_GET['id'];

$oneNews = newsFetchOneById($id);

if (empty($oneNews)) {
    die('Trazena vest ne postoji!');
}
sectionsFetchAll();
require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_one-news.php';
require_once __DIR__ . '/views/layout/footer.php';


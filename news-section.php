<?php
session_start();

require_once __DIR__ . '/models/m_news.php';
require_once __DIR__ . '/models/m_sections.php';

require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_news-section.php';
require_once __DIR__ . '/views/layout/footer.php';

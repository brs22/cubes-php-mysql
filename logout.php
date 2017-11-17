<?php
session_start();

//$_SESSION['logged_in_user'] = false;
session_destroy(); //unistavanje cele esije

header('Location: /index.php');
die;
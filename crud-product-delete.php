    <?php
session_start();
require_once __DIR__ . '/models/m_users.php';


if(!isUserLoggedIn()) {
    header('location: /login.php');
    die();
}

require_once __DIR__ . '/models/m_products.php';

if (empty($_GET['id'])) {
    die('Morate proslediti id');
}

$id = (int) $_GET['id'];

$product = productsFetchOneById($id);

if (empty($product)) {
    die('Trazeni product ne postoji!');
}

if (isset($_POST["task"]) && $_POST["task"] == "delete") {

    $photoFilePath = __DIR__ . '/uploads/products/' . $product['photo_filename'];
            
    productsDeleteOneById($product['id']);
    
    if (is_file($photoFilePath)) {
                unlink($photoFilePath);
            }

    header('location: /crud-product-list.php');
    die();
}

require_once __DIR__ . '/views/layout/header.php';
require_once __DIR__ . '/views/templates/t_crud-product-delete.php';
require_once __DIR__ . '/views/layout/footer.php';

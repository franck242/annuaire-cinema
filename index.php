<?php


$url=explode("/",$_SERVER['REQUEST_URI']);
switch ($url[1]) {
    case  "film":
        include('controllers/indexController.php');
        break;
    case "categorie":
        echo "i égal 1";
        break;
        case "":
            break;
    case 'annees':
        echo "i égal 2";
        break;
    case 'annees':
        echo "i égal 2";
        break;
    default:
        echo 'page not found';
    
}
?>




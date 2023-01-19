<?php
require 'includes/dbh.inc.php';
session_start();
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/navFooterReset.css">
    <?php
    $page = basename(($_SERVER['PHP_SELF']));
    if ($page == "main.php") {
        echo '<link rel="stylesheet" href="../css/main.css">';
    } else if ($page == "login.php") {
        echo '<link rel="stylesheet" href="../css/login.css">';
    } else if ($page == "signup.php") {
        echo '<link rel="stylesheet" href="../css/signup.css">';
    } else if ($page == "profile.php") {
        echo '<link rel="stylesheet" href="../css/profile.css">';
    } else if ($page == "fresh.php" || $page == "now.php" || $page == "now20.php" || $page == "board.php" || $page == "computer.php" || $page == "comicsSearch.php" || $page == "gamesSearch.php") {
        echo '<link rel="stylesheet" href="../css/table.css">';
    }
    ?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a0e19143b.js" crossorigin="anonymous"></script>
    <title>SketchmotionWeb</title>
</head>
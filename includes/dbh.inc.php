<!-- POŁĄCZENIE Z ZEWNĘTRZNĄ BAZĄ DANYCH -->
<?php
$serverName = "localhost";
$dBUsername = "root";
$dbPassword = "";
$dBName = "sketchmotionweb";

$conn = mysqli_connect($serverName, $dBUsername, $dbPassword, $dBName);

if (!$conn) {
    die("Połączenie nie powiodło się: " . mysqli_connect_error());
}
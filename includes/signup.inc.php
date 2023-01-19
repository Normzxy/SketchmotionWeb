<?php
if (isset($_POST["submit"])) {
    $name = $_POST["name"];
    $email = $_POST["e-mail"];
    $username = $_POST["uid"];
    $pwd = $_POST["pwd"];
    $pwdRepeat = $_POST["pwd-repeat"];


    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';

    if (emptyInputSignup($name, $email, $username, $pwd, $pwdRepeat) !== false) {
        header("location: ../subpages/signup.php?error=emptyinput");
        exit();
    }
    if (invalidUid($username) !== false) {
        header("location: ../subpages/signup.php?error=invaliduid");
        exit();
    }
    if (invalidName($name) !== false) {
        header("location: ../subpages/signup.php?error=invalidname");
        exit();
    }
    if (invalidEmail($email) !== false) {
        header("location: ../subpages/signup.php?error=invalidemail");
        exit();
    }
    if (pwdMatch($pwd, $pwdRepeat) !== false) {
        header("location: ../subpages/signup.php?error=pwdmatch");
        exit();
    }
    if (uidExists($conn, $username, $email) !== false) {
        header("location: ../subpages/signup.php?error=usernametaken");
        exit();
    }

    createUser($conn, $name, $email, $username, $pwd);

} else {
    header("location: ../subpages/signup.php");
    exit();
}
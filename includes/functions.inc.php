<?php
//FUNKCJE KONTROLNE PODCZAS REJESTRACJI UŻYTKOWNIKA

// funkcja sprawdzająca, czy użytkownik nie pozostawił pustych pól przy rejestracji
function emptyInputSignup($name, $email, $username, $pwd, $pwdRepeat)
{
    $result = "";
    if (empty($name) || empty($email) || empty($username) || empty($pwd) || empty($pwdRepeat)) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

//funkcja sprawdzająca, czy nazwa użytkownika nie zawiera niedozwolonych znaków
function invalidUid($username)
{
    $result = "";
    if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

function invalidName($name)
{
    $result = "";
    if (!preg_match("/^[- '\p{L}]+$/u", $name)) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

//funckja sprawdzająca poprawność wprowadzonego maila
function invalidEmail($email)
{
    $result = "";
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

// funckja sprawdzjąca zgodność haseł przy rejestracji
function pwdMatch($pwd, $pwdRepeat)
{
    $result = "";
    if ($pwd !== $pwdRepeat) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

// funckja sprawdzająca, czy użytkownik znajduje się już w bazie danych oraz zabezpieczająca przed zbyt szybkim wprowadzeniem niepożądanych informacji do bazy danych
function uidExists($conn, $username, $email)
{
    $sql = "SELECT * FROM users WHERE usersUid = ? OR usersEmail = ?;";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../subpages/signup.php?error=stmtfailed");
        exit();
    }
    mysqli_stmt_bind_param($stmt, "ss", $username, $email);
    mysqli_stmt_execute($stmt);
    $resultData = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($resultData)) {
        return $row;
    } else {
        $result = false;
    }
    mysqli_stmt_close($stmt);
    return $result;
}

// funkcja wpisująca użytkownika do bazy danych, po sprawdzeniu wszystkich warunków
function createUser($conn, $name, $email, $username, $pwd)
{
    $sql = "INSERT INTO users (usersName, usersEmail, usersUid, usersPwd) VALUES  (?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../subpages/signup.php?error=stmtfailed");
        exit();
    }

    $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);

    mysqli_stmt_bind_param($stmt, "ssss", $name, $email, $username, $hashedPwd);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: ../subpages/signup.php?error=none");
    exit();
}

//FUNKCJE KONTROLNE PODCZAS LOGOWANIA UŻYTKOWNIKA

// funkcja sprawdzjąca, czy pola zostały wypełnione
function emptyInputLogin($username, $pwd)
{
    $result = "";
    if (empty($username) || empty($pwd)) {
        $result = true;
    } else {
        $result = false;
    }
    return $result;
}

// funkcja odpowiadająca za logowanie użytkownika
function loginUser($conn, $username, $pwd)
{
    $uidExists = uidExists($conn, $username, $username);
    if ($uidExists === false) {
        header('location: ../subpages/login.php?error=wronglogin');
        exit();
    }
    $pwdHasehed = $uidExists['usersPwd'];
    $checkPwd = password_verify($pwd, $pwdHasehed);
    if ($checkPwd === false) {
        header('location: ../subpages/login.php?error=wronglogin');
    } else if ($checkPwd === true) {
        session_start();
        $_SESSION['userid'] = $uidExists['usersId'];
        $_SESSION['useruid'] = $uidExists['usersUid'];
        $_SESSION['username'] = $uidExists['usersName'];
        $_SESSION['useremail'] = $uidExists['usersEmail'];
        header('location: ../subpages/main.php');
        exit();
    }
}
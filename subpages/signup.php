<?php
include_once '../head.php';
?>

<?php
include_once '../navigation.php';
?>

<section class="signup-form">
    <div class="signup-form-style">
        <h2>Zarejestruj się</h2>
        <form action="../includes/signup.inc.php" method="post">
            <input type="text" name="name" maxlength="50" placeholder="IMIĘ I NAZWISKO">
            <input type="text" name="e-mail" placeholder="E-MAIL">
            <input type="text" name="uid" maxlength="30" placeholder="NAZWA UŻYTKOWNIKA">
            <input type="password" name="pwd" placeholder="HASŁO">
            <input type="password" name="pwd-repeat" placeholder="POWTÓRZ HASŁO">
            <button type="submit" name="submit">dalej</button>
        </form>
    </div>

    <?php
    if (isset($_GET["error"])) {
        if ($_GET["error"] == "emptyinput") {
            echo "<p class='error'>Wypełnij wszystkie pola formularza!</p>";
        } else if ($_GET["error"] == "invaliduid") {
            echo "<p class='error'>Nieprawidłowa nazwa użytkownika!</p>";
        } else if ($_GET["error"] == "invalidname") {
            echo "<p class='error'>Wprowadzono niedozwolone znaki!</p>";
        } else if ($_GET["error"] == "invalidemail") {
            echo "<p class='error'>Nieprawidłowy e-mail!</p>";
        } else if ($_GET["error"] == "pwdmatch") {
            echo "<p class='error'>Podane hasła nie zgadzają się!</p>";
        } else if ($_GET["error"] == "stmtfailed") {
            echo "<p class='error'>Coś poszło nie tak! Spróbuj ponownie.</p>";
        } else if ($_GET["error"] == "usernametaken") {
            echo "<p class='error'>Użytkownik znajduje się już w naszej bazie danych!</p>";
        } else if ($_GET["error"] == "none") {
            echo "<p class='error'>Zarejestrowano pomyślnie!</p>";
        }
    }
    ?>
</section>

<?php
include_once '../footer.php';
?>
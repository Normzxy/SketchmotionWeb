<?php
include_once '../head.php';
?>

<?php
include_once '../navigation.php';
?>

<section class="login-form">
    <div class="login-form-style">
        <h2>Zaloguj się</h2>
        <form action="../includes/login.inc.php" method="post">
            <input type="text" name="uid" placeholder="NAZWA UŻYTKOWNIKA/E-MAIL">
            <input type="password" name="pwd" placeholder="HASŁO">
            <button type="submit" name="submit"><span>dalej</span></button>
        </form>
    </div>
    <?php
    if (isset($_GET["error"])) {
        if ($_GET["error"] == "emptyinput") {
            echo "<p class='error'>Wpisz login i hasło!</p>";
        } else if ($_GET["error"] == "wronglogin") {
            echo "<p class = 'error'>Złe dane logowania!</p>";
        }
    }
    ?>
</section>

<?php
include_once '../footer.php';
?>
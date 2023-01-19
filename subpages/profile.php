<?php
include_once '../head.php';
?>

<?php
include_once '../navigation.php';
?>

<section class="profile-info">
    <div class="profile-disp">
        <h3>
            <?php echo 'Czołem '; ?>
            <span>
                <?php echo $_SESSION['useruid']; ?>
            </span>
            <?php echo '!'; ?>
        </h3>
        <p>
            <?php echo 'Cieszymy się, że z nami jesteś!'; ?>
        </p>
        <h3>
            <?php echo 'Użytkownik: '; ?>
            <span>
                <?php echo $_SESSION['username']; ?>
            </span>
        </h3>
        <h3>
            <?php echo 'E-mail: ' ?>
            <span>
                <?php echo $_SESSION['useremail']; ?>
            </span>
        </h3>
    </div>
</section>
<?php
include_once '../footer.php';
?>
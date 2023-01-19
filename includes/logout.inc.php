<?php
session_start();
session_unset();
session_destroy();

header('location: ../subpages/main.php');
exit();
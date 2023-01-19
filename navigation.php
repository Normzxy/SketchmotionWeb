<body>
    <nav class="navbar">
        <div class="home-icon">
            <a href="main.php" title="SketchmotionWeb">
                <div class="home-img"></div>
            </a>
        </div>
        <div class="burger-icon">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
        
        <ul class="menu active">
            <?php
            //string z nazwą strony bez rozszerzenia .php
            $pageName = explode('.', $page);
            $pageName = $pageName[0];

            if ($page == "fresh.php" || $page == "now.php" || $page == "now20.php") {
                echo '
                    <form class="search-form" action="comicsSearch.php?page=' . $pageName . '" method="POST">
                        <input type="text" name="search" placeholder="Wpisz frazę">
                        <button class="search" type="submit" name="submit-search">SZUKAJ</button>
                    </form>';
            } else if ($page == "board.php" || $page == "computer.php") {
                echo '
                <form class="search-form" action="gamesSearch.php?page=' . $pageName . '" method="POST">
                    <input type="text" name="search" placeholder="Wpisz frazę">
                    <button class="search" type="submit" name="submit-search">SZUKAJ</button>
                </form>';
            } else if ($page == "gamesSearch.php" || $page == "comicsSearch.php") {
                echo '
                <form class="search-form" method="POST">
                    <button class="go-back" type="submit" name="submit-go-back">WRÓĆ</button>
                </form>';
            }
            ?>
            <li class="menu-item marvel">
                marvel
                <ul class="dropdown">
                    <li class="link">
                        <a href="now.php">Now</a>
                    </li>
                    <li class="link">
                        <a href="now20.php">Now 2.0</a>
                    </li>
                    <li class="link">
                        <a href="fresh.php">Fresh</a>
                    </li>
                </ul>
            </li>
            <li class="menu-item games">
                gry
                <ul class="dropdown">
                    <li class="link">
                        <a href="computer.php">komputerowe</a>
                    </li>
                    <li class="link">
                        <a href="board.php">planszowe</a>
                    </li>
                </ul>
            </li>
            <?php
            if ($page == "main.php") {
                echo '<li class="menu-item"><a href="#about-us" class="anchor">o nas</a></li>
                <li class="menu-item"><a href="#contact" class="anchor">kontakt</a></li>';
            }
            if (isset($_SESSION['useruid'])) {
                echo '<li class="menu-item"><a href="profile.php" class="anchor">profil</a></li>';
                echo '<li class="menu-item"><a href="../includes/logout.inc.php" class="anchor">wyloguj się</a></li>';
            } else {
                echo '<li class="menu-item"><a href="signup.php" class="anchor">rejestracja</a></li>';
                echo '<li class="menu-item"><a href="login.php" class="anchor">login</a></li>';
            }
            echo '</ul></nav>';
            ?>
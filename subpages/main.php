<?php
include_once '../head.php';
?>

<?php
include_once '../navigation.php';
?>

<header class="header">
    <div class="header-bg"></div>
    <div class="header-text">
        <h1>Sketchmotion<span>Web</span></h1>
        <p>Największa baza komiksów w Polsce!</p>
    </div>
</header>

<main>
    <section class="about-us wrapper" id="about-us">
        <h2 class="section-title">O nas</h2>
        <p class="about-us-info">Jesteś fanem komiksów, rysunków i szukasz ludzi, z którymi będziesz mógł dzielić
            swoją pasję? W takim razie lepiej nie mogłeś trafić!</p>
        <p class="about-us-info">Jesteśmy społecznością geeków, w której na pewno znajdziesz swoje miejsce i
            podzielisz się swoją wiedzą. Stwórz swoją internetową półkę, znajdź coś nowego dla siebie i pomoż
            odkrywać nowości innym!</p>
    </section>
    <section class="partners wrapper" id="partners">
        <h2 class="section-title">Nasi partnerzy</h2>
        <div class="fix-spaces">
            <div class="partner first link">
                <a href="https://www.marvel.com/unlimited" target="_blank" title="Marvel Unlimited">
                    <div class="hero-bg"></div>
                    <div class="hero-text">
                        <h3>Marvel</h3>
                    </div>
                </a>
            </div>
            <div class="partner second link">
                <a href="https://egmont.pl/" target="_blank" title="egmont.pl">
                    <div class="hero-bg"></div>
                    <div class="hero-text">
                        <h3>Egmont</h3>
                    </div>
                </a>
            </div>
            <div class="partner third link">
                <a href="https://kolekcja-hachette.pl/" target="_blank" title="kolekcja-hachette.pl">
                    <div class="hero-bg"></div>
                    <div class="hero-text">
                        <h3>Hachette</h3>
                    </div>
                </a>
            </div>
            <div class="partner fourth link"><a href="https://muchacomics.com/" target="_blank" title="muchacomics.com">
                    <div class="hero-bg"></div>
                    <div class="hero-text">
                        <h3>MuchaComics</h3>
                    </div>
                </a>
            </div>
        </div>
    </section>
    <section class="contact wrapper" id="contact">
        <h2 class="section-title">kontakt</h2>
        <p><i class="fa-solid fa-phone"></i>+48 123 456 789</p>
        <p><i class="fa-solid fa-envelope"></i>sketchmotionweb@gmail.com</p>
        <h3>Adres</h3>
        <p>ul. Rysunkowa 420</p>
        <p>44-100 Gliwice</p>
    </section>
</main>
<?php
include_once '../footer.php';
?>
<?php
include_once "../head.php";
?>

<?php
include_once "../navigation.php";
?>
<section>
    <?php
    // utworzenie zmiennej pageName po odcięciu rozszerzenia pliku
    $pageName = $_GET['page'];

    if (isset($_POST['submit-search'])) {
        $search = mysqli_real_escape_string($conn, $_POST['search']);
        $sql = "SELECT * FROM games WHERE GameType='$pageName' AND (Categories LIKE '%$search%' OR Title LIKE '%$search%' OR ReleaseYear LIKE '%$search%' OR Producer LIKE '%$search%' OR Publisher LIKE '%$search%' OR Platforms LIKE '%$search%' OR Pegi LIKE '%$search%')";

        $result = mysqli_query($conn, $sql);

        $oddrow = true;

        if (mysqli_num_rows($result) > 0) {
            echo '<body>
            <table cellspacing="0">
                <tr class="' . $pageName . 'row">
                    <th class="column-name first column"><span>okładka</span></th>
                    <th class="column-name second column"><span>tytuł</span></th>
                    <th class="column-name third column"><span>producent</span></th>
                    <th class="column-name fourth column display920"><span>wydawca</span></th>
                    <th class="column-name fifth column display920"><span>kategorie</span></th>';
            if ($pageName == 'computer') {
                echo '<th class="column-name sixth column display920"><span>platformy</span></th>';
            }
            echo '<th class="column-name seventh column display500"><span>rok wydania</span></th>
                <th class="column-name eighth column display920"><span>wiek</span></th>
                </tr>';
            while ($row = mysqli_fetch_assoc($result)) {
                if ($oddrow) {
                    $row_style = 'class="row odd ';
                } else {
                    $row_style = 'class="row even ';
                }
                $oddrow = !$oddrow;
                echo '<tr class="' . $pageName . 'row">';
                echo '<td ' . $row_style . 'first column"><img class="img" src="../img/covers/' . $row['ImgName'] . '.png"></img></td>';
                echo '<td ' . $row_style . 'second column">' . $row['Title'] . '</td>';
                echo '<td ' . $row_style . 'third column">' . $row['Producer'] . '</td>';
                echo '<td ' . $row_style . 'fourth column display920">' . $row['Publisher'] . '</td>';
                echo '<td ' . $row_style . 'fifth column display920">' . $row['Categories'] . '</td>';
                if ($pageName == 'computer') {
                    echo '<td ' . $row_style . 'sixth column display920">' . $row['Platforms'] . '</td>';
                }
                echo '<td ' . $row_style . 'seventh column display500">' . $row['ReleaseYear'] . '</td>';
                echo '<td ' . $row_style . 'eighth column display920">' . $row['Pegi'] . '</td>';
                echo '</tr>';
            }
        } else {
            echo '<p class="result-message">Brak wyników wyszukiwania!</p>';
        }
    }
    if (isset($_POST['submit-go-back'])) {
        header("location: $pageName.php");
    }
    ?>
    </table>
</section>
<?php
include_once '../footer.php';
?>
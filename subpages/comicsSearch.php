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

    if ($pageName == "fresh") {
        $publisher = "Marvel Fresh";
    } else if ($pageName == "now") {
        $publisher = "Marvel Now";
    } else if ($pageName == "now20") {
        $publisher = "Marvel Now 2.0";
    }

    if (isset($_POST['submit-search'])) {
        $search = mysqli_real_escape_string($conn, $_POST['search']);
        $sql = "SELECT * FROM comics WHERE Publisher='$publisher' AND (Title LIKE '%$search%' OR Author LIKE '%$search%' OR ComicDescription LIKE '%$search%' OR ReleaseYear LIKE '%$search%')";

        $result = mysqli_query($conn, $sql);

        $oddrow = true;

        if (mysqli_num_rows($result) > 0) {
            echo '<body>
            <table cellspacing="0">
                <tr class="comics row">
                    <th class="column-name first column"><span>okładka</span></th>
                    <th class="column-name second column"><span>tytuł</span></th>
                    <th class="column-name third column"><span>autorzy</span></th>
                    <th class="column-name fourth column display500"><span>rok wydania</span></th>
                    <th class="column-name fifth column display920"><span>opis</span></th>
                </tr>';
            while ($row = mysqli_fetch_assoc($result)) {
                if ($oddrow) {
                    $row_style = 'class="row odd ';
                } else {
                    $row_style = 'class="row even ';
                }
                $oddrow = !$oddrow;
                echo '<tr class="comics row">';
                    echo '<td ' . $row_style . 'first column"><img class="img" src="../img/covers/' . $row['ImgName'] . '.png"></img></td>';
                    echo '<td ' . $row_style . 'second column">' . $row['Title'] . '</td>';
                    echo '<td ' . $row_style . 'third column">' . $row['Author'] . '</td>';
                    echo '<td ' . $row_style . 'fourth column display500">' . $row['ReleaseYear'] . '</td>';
                    echo '<td ' . $row_style . 'fifth column display920">' . $row['ComicDescription'] . '</td>';
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
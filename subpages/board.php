<?php
include_once '../head.php';
?>

<?php
include_once '../navigation.php';
?>
<section>
    <?php
    $sql = "SELECT * FROM games WHERE GameType = 'board';";
    $result = mysqli_query($conn, $sql);
    $oddrow = true;
    if (mysqli_num_rows($result) > 0) {
        echo '<body>
        <table cellspacing="0">
            <tr class="board row">
                <th class="column-name first column"><span>okładka</span></th>
                <th class="column-name second column"><span>tytuł</span></th>
                <th class="column-name third column"><span>producent</span></th>
                <th class="column-name fourth column display920"><span>wydawca</span></th>
                <th class="column-name fifth column display920"><span>kategorie</span></th>
                <th class="column-name sixth column display500"><span>rok wydania</span></th>
                <th class="column-name seventh column display920"><span>wiek</span></th>
            </tr>';
        while ($row = mysqli_fetch_assoc($result)) {
            if ($oddrow) {
                $row_style = 'class="row odd ';
            } else {
                $row_style = 'class="row even ';
            }
            $oddrow = !$oddrow;
            echo '<tr class="board row">';
            echo '<td ' . $row_style . 'first column"><img class="img" src="../img/covers/' . $row['ImgName'] . '.png"></img></td>';
            echo '<td ' . $row_style . 'second column">' . $row['Title'] . '</td>';
            echo '<td ' . $row_style . 'third column">' . $row['Producer'] . '</td>';
            echo '<td ' . $row_style . 'fourth column display920">' . $row['Publisher'] . '</td>';
            echo '<td ' . $row_style . 'fifth column display920">' . $row['Categories'] . '</td>';
            echo '<td ' . $row_style . 'sixth column display500">' . $row['ReleaseYear'] . '</td>';
            echo '<td ' . $row_style . 'seventh column display920">' . $row['Pegi'] . '</td>';
            echo '</tr>';
        }
    }
    ?>
    </table>
</section>
<?php
include_once '../footer.php';
?>
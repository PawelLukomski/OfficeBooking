<ul>
    <?php
    $equipment = $workplace['equ_name'];
    $exp = explode(";", $equipment);
    foreach ($exp as $item) {
        echo "<li>" . $item . "</li>";
    }
    ?>
</ul>
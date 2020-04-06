<ul class="workplaceList">
    <?php

    foreach ($workplaces as $workplace) {
        preg_match("/([a-zA-Z])(\d*)/m", $workplace['designation'], $match);
        echo "<li class='workplace_" . strtolower($match[1]) . "' onclick='choseDevice(\"" . $workplace['designation'] . "\", " . $workplace['id'] . ")'>" . $workplace['designation'] . "</li>";
    }

    ?>
</ul>
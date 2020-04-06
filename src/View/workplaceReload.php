<div class="view_table_main">
    <table class="table">
        <tr>
            <th>Miejsce</th>
            <th>Opis</th>
        </tr>
        <?php
        foreach ($workplace as $item) {

            echo '<tr>';
            preg_match("/([a-zA-Z])(\d*)/m", $item['workplace_name'], $match);
            echo '<td class="workplace_' . strtolower($match[1]) . '">' . $item['workplace_name'] . '</td>';
            $exp = explode(";", $item['equ_name']);
            echo "<td>";
            foreach ($exp as $device) {
                $explodeId = explode(",", $device);

                echo "<span class='device'>" . $explodeId[1] . " <button onclick='options(" . $explodeId[0] . ")'>Przenies</button><button>Edytuj</button><form method='post' id='form" . $explodeId[0] . "'><span class='clearOptions' id='options" . $explodeId[0] . "'></span></form></span>";
            }
            echo "</td>";

        }
        ?>
    </table>
</div>
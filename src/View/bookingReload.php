<div class="view_table_main">
    <?php
    if ($wrong == true) {
        echo "termin niedostepny";
    }
    ?>
    <table class="table">
        <tr>
            <th>Osoba</th>
            <th>Termin</th>
            <th>Miejsce</th>
            <th>Akcja</th>
        </tr>
        <?php

        foreach ($bookings as $booking) {
            echo "<tr>
                    <td class='table_person'>" . $booking['person_name'] . "<br>" . $booking['email'] . "<br>" . $booking['phone'] . "</td>
                    <td>" . $booking['date'] . " - " . $booking['date_to'] . "</td>
                    <td>" . $booking['designation'] . "</td>
                    <td><button onclick='deleteMe(" . $booking['id'] . ")'>Usun</button> </td>
                  </tr>
                ";
        }

        ?>
    </table>
</div>
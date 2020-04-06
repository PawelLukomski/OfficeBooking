<div class="view_header">
    <h2>Miejsca pracy</h2>
</div>
<div class="view_options">
    <a href="/addEquipment">
        <button>Dodaj wyposazenie</button>
    </a>
</div>

<div class="reloadTable">
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

                    echo "<span class='device'>" . $explodeId[1] . " <button onclick='options(" . $explodeId[0] . ")'>Przenies</button><a href='/editequipment/" . $explodeId[0] . "'><button>Edytuj</button></a><form method='post' id='form" . $explodeId[0] . "'><span class='clearOptions' id='options" . $explodeId[0] . "'></span></form></span>";
                }
                echo "</td>";

            }
            ?>
        </table>
    </div>
</div>

<script type="text/javascript">
    var chosenDevice = 0;

    function liveSearch() {
        $("#search_box" + chosenDevice).keyup(function () {
            console.log("keyup");
            if ($("#search_box" + chosenDevice).val() != "") {
                $.ajax({
                    type: "POST",
                    url: "/searchPlace",
                    data: 'place_name=' + $(this).val(),

                    beforeSend: function () {
                    },
                    success: function (data) {
                        $("#suggestion_box" + chosenDevice).show();
                        console.log(data);
                        $("#suggestion_box" + chosenDevice).html(data);
                    }
                });
            } else {
                $("#suggestion_box" + chosenDevice).hide();
            }
        });
    }

    function options(id) {
        chosenDevice = id;
        $(".clearOptions").html("");
        $("#options" + id).html("<input class='searchBox' type='text' id='search_box" + id + "' placeholder='Przenies do:' autocomplete=\"off\">" +
            "<div class='suggestion_box' id='suggestion_box" + id + "'></div>");
        liveSearch();
        $("#form" + chosenDevice).submit(function (event) {
            event.preventDefault(); //prevent default action
            var post_url = "/workplacemove"; //get form action url
            var request_method = $(this).attr("method"); //get form GET/POST method
            var form_data = $(this).serialize(); //Encode form elements for submission

            $.ajax({
                url: post_url,
                type: request_method,
                data: form_data
            }).done(function (response) { //
                $(".reloadTable").html(response);
            });
        });
    }


    function choseDevice(name, id) {
        $("#search_box" + chosenDevice).val("Wybrano [" + name + "], aby edytować kliknij tutaj 2 razy lub: ");
        $("#options" + chosenDevice).append("<input name='placeId' type='hidden' value='" + id + "'><input name='deviceId' type='hidden' value='" + chosenDevice + "'><button name='moveIt'>Zapisz</button>");
        $("#suggestion_box" + chosenDevice).hide();
        $('#search_box' + chosenDevice).attr('readonly', true);
        $("#search_box" + chosenDevice).dblclick(function () {
            $("#options" + chosenDevice).html("<input class='searchBox' type='text' id='search_box" + chosenDevice + "' placeholder='Przenies do:'>" +
                "<div class='suggestion_box' id='suggestion_box" + chosenDevice + "'></div>");
            liveSearch();

        });
    }


</script>
<div class="view_header">
    <h2>Edytuj wyposazenie</h2>
</div>
<a href="/workplace#options<?php echo $equipment['id']; ?>">
    <button>Wroc do listy</button>
</a>
<div class="addForm">
    <form method="post">
        <label>Rodzaj</label><br>
        <input type="text" name="type" maxlength="100" value="<?php echo $equipment['type'] ?>"><br>
        <label>Model</label><br>
        <input type="text" name="model" maxlength="100" value="<?php echo $equipment['model'] ?>"><br>
        <label>Rok zakupu</label><br>
        <input type="number" name="year" min="1000" max="2020" value="<?php echo $equipment['year'] ?>"><br>
        <label>Wartosc</label><br>
        <input type="number" step="0.01" name="price" value="<?php echo $equipment['worth'] ?>"><br>
        <label>Opis</label><br>
        <input type="text" maxlength="255" name="description" value="<?php echo $equipment['description'] ?>"><br>
        <button name="editEquipment">Edytuj</button>
    </form>
    <hr>

    <button onclick="deleteMe(<?php echo $equipment['id'] ?>)">Usuń</button>
    <Br>
</div>
<script type="text/javascript">
    function deleteMe(id) {
        var confirmed = confirm("Czy na pewno chcesz usunac urzadzenie?");
        if (confirmed == true) {
            window.location = "/deleteEquipment/" + id;
        }
    }
</script>

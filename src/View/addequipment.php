<div class="view_header">
    <h2>Dodaj wyposazenie</h2>
</div>
<div class="addForm">
    <form method="post">
        <label>Rodzaj</label><br>
        <input type="text" name="type" maxlength="100"><br>
        <label>Model</label><br>
        <input type="text" name="model" maxlength="100"><br>
        <label>Miejsce pracy</label><br>
        <select name="workplace">
            <?php
            foreach ($workplaces as $workplace)
                echo "<option value='" . $workplace['id'] . "'>" . $workplace['designation'] . "</option>";
            ?>
        </select><br>
        <label>Rok zakupu</label><br>
        <input type="number" name="year" min="1000" max="2020"><br>
        <label>Wartosc</label><br>
        <input type="number" step="0.01" name="price"><br>
        <label>Opis</label><br>
        <input type="text" maxlength="255" name="description"><br>
        <button name="addEquipment">Dodaj</button>
    </form>
</div>

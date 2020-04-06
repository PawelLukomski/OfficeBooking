<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require __DIR__ . "/../vendor/autoload.php";

$request = new \Manager\Request();
$params = new \Manager\MainView();
if(in_array($request->getAction(), $params->param("OutOfTemplate")))
{
    $request->getPage();
}
else{
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Office Booking</title>
        <link rel="stylesheet" href="/styles/reset.css">
        <link rel="stylesheet" href="/styles/style.css">
        <script src="jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="/datetimepicker/jquery.datetimepicker.css"/>
    </head>
    <body>
    <header class="header_main">
        <div class="header_main_logo">
            <h1>System rezerwacji</h1>
        </div>
        <nav class="header_main_nav">
            <ul>

                <?php

                //var_dump($params->getNav());

                foreach ($params->getNav() as $name => $link) {
                    echo "<a href='" . $link . "'><li>" . $name . "</li></a>";
                }

                ?>
            </ul>
        </nav>
    </header>
    <div class="content_main">
        <div class="content_main_view">
            <?php
            $request->getPage();
            ?>
        </div>
    </div>

    </body>
    </html>
    <?php
}
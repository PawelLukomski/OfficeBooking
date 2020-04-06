<?php

namespace Controller;

use Manager\MainManager;

class Controller extends MainManager
{
    CONST viewDir = __DIR__."/../View/";

    public function render($fileName, $vars)
    {
        extract($vars);

        require self::viewDir.$fileName;
    }
}
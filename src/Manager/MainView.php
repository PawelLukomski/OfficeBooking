<?php

namespace Manager;


class MainView extends MainManager
{
    public function getNav()
    {
        return $this->param("NavParams", null);
    }
}
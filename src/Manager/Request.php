<?php

namespace Manager;


class Request extends MainManager
{
    public $url;

    public $controller;

    public $action;

    public $params = [];

    public function __construct()
    {
        $this->url = $_SERVER['REQUEST_URI'];

        $explodeRequest = explode("/", $this->url);
        if (!isset($explodeRequest[1]) || $explodeRequest[1] == "")
            $this->action = "booking";
        else
            $this->action = strtolower($explodeRequest[1]);

        if (isset($explodeRequest[2]))
            $this->params = array_slice($explodeRequest, 2);

    }

    public function getPage()
    {

        $controllerName = "\Controller\HomeController";

        $controller = new $controllerName();

        $actionName = $this->getAction() . "Action";

        $controller->$actionName($this->getParams());
    }

    /**
     * @return mixed
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * @param mixed $url
     */
    public function setUrl($url)
    {
        $this->url = $url;
    }

    /**
     * @return mixed
     */
    public function getController()
    {
        return $this->controller;
    }

    /**
     * @param mixed $controller
     */
    public function setController($controller)
    {
        $this->controller = $controller;
    }

    /**
     * @return mixed
     */
    public function getAction()
    {
        return $this->action;
    }

    /**
     * @param mixed $action
     */
    public function setAction($action)
    {
        $this->action = $action;
    }

    /**
     * @return array
     */
    public function getParams()
    {
        return $this->params;
    }

    /**
     * @param array $params
     */
    public function setParams($params)
    {
        $this->params = $params;
    }

}
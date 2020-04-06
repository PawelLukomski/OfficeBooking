<?php

namespace Manager;


class MainManager
{
    public function param($index, $underIndex = null)
    {
        $file = fopen(__DIR__ . "/../../config/params.qcl", "r");
        $params = [];
        $underParams = [];
        while ($line = fgets($file)) {
            if ($line != "\n") {
                if ($line[0] != "    " && $line[0] != " " && $line != "") {
                    $underParams = [];
                    $key = trim($line);
                } else {
                    $exp = explode(":", trim($line));
                    $value = preg_replace("/\"/", "", $exp[1]);

                    $underParams[$exp[0]] = $value;

                }

                $params[$key] = $underParams;
            }
        }
        if ($underIndex == null)
            return $params[$index];
        else
            return $params[$index][$underIndex];
    }

    public function getSqlConfig()
    {
        $file = $this->param('MainParams', 'SqlFile');

        $getFile = file_get_contents(__DIR__ . "/../../config/" . $file);

        return json_decode($getFile, 1);
    }

    public function sql()
    {
        $sqlFile = $this->getSqlConfig();

        $db = new \PDO('mysql:host=' . $sqlFile['host'] . ';dbname=' . $sqlFile['database'] . ';charset=utf8mb4', $sqlFile['username'], $sqlFile['password'], [\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"]);
        $db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);

        return $db;
    }
}
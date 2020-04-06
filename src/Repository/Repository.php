<?php

namespace Repository;

use Manager\MainManager;

class Repository extends MainManager
{
    public function getWorkplace()
    {
        $select = $this->sql()->prepare("select w.id as workplace_id, w.designation as workplace_name, group_concat(e.id, ',', e.type,
                                                    ' ', e.model separator ';')
                                                    as equ_name from workplace w left join equipment
                                                     e on e.designation = w.id group by w.id;");
        $select->execute();
        return $select->fetchAll();
    }

    public function getWorkplaceOne($id)
    {
        $select = $this->sql()->prepare("select w.id as workplace_id, w.designation as workplace_name, group_concat(e.id, ',', e.type,   ' ', e.model separator ';') as equ_name from workplace w left join equipment e on e.designation = w.id where w.id = :id group by w.id;");
        $select->bindValue(":id", $id);
        $select->execute();
        return $select->fetch();
    }

    public function getPlacesByName($workplace)
    {
        $select = $this->sql()->prepare("select * from workplace where designation like '%" . $workplace . "%'");
        $select->execute();
        return $select->fetchAll();
    }

    public function getPlaces()
    {
        $select = $this->sql()->prepare("select * from workplace");
        $select->execute();
        return $select->fetchAll();
    }

    public function getPersons()
    {
        $select = $this->sql()->prepare("select * from person");
        $select->execute();
        return $select->fetchAll();
    }

    public function moveEquipment($device, $workplace)
    {
        $update = $this->sql()->prepare("update equipment set designation = :workplace where id = :device");
        $update->bindValue(":workplace", $workplace);
        $update->bindValue(":device", $device);
        $update->execute();
    }

    public function getBooking()
    {
        $select = $this->sql()->prepare("select b.id as id, b.date as date, b.date_to as date_to, concat(p.name, ' ', p.surname) as person_name, p.email as email, p.phone as phone, w.designation as designation from booking b left join person p on b.person = p.id left join workplace w on b.designation = w.id order by b.id desc");
        $select->execute();
        return $select->fetchAll();
    }

    public function checkBookDate($from, $to, $designation)
    {
        $select = $this->sql()->prepare("select * from booking WHERE date < :to and date_to > :from and designation = :designation");
        $select->bindValue(":from", $from);
        $select->bindValue(":to", $to);
        $select->bindValue(":designation", $designation);
        $select->execute();
        if (count($select->fetchAll()) == 0)
            return true;
        else
            return false;
    }

    public function insertBooking($date, $date_to, $person, $designation)
    {
        $insert = $this->sql()->prepare("insert into booking (date, date_to, person, designation) values (:date, :date_to, :person, :designation);");
        $insert->bindValue(":date", $date);
        $insert->bindValue(":date_to", $date_to);
        $insert->bindValue(":person", $person);
        $insert->bindValue(":designation", $designation);
        $insert->execute();
    }

    public function insertEquipment($type, $model, $designation, $year, $worth, $description)
    {
        $insert = $this->sql()->prepare("insert into equipment (type, model, designation, year, worth, description) values (:type, :model, :designation, :year, :worth, :description)");
        $insert->bindValue(":type", $type);
        $insert->bindValue(":model", $model);
        $insert->bindValue(":designation", $designation);
        $insert->bindValue(":year", $year);
        $insert->bindValue(":worth", $worth);
        $insert->bindValue(":description", $description);
        $insert->execute();
    }

    public function getEquipment($id)
    {
        $select = $this->sql()->prepare("select * from equipment where id = :id");
        $select->bindValue(":id", $id);
        $select->execute();
        return $select->fetch();
    }

    public function editEquipment($type, $model, $year, $worth, $description, $id)
    {
        $edit = $this->sql()->prepare("update equipment set type = :type, model = :model, year = :year, worth = :worth, description = :description where id = :id");
        $edit->bindValue(":type", $type);
        $edit->bindValue(":model", $model);
        $edit->bindValue(":year", $year);
        $edit->bindValue(":worth", $worth);
        $edit->bindValue(":description", $description);
        $edit->bindValue(":id", $id);
        $edit->execute();
    }

    public function deleteEquipment($id)
    {
        $delete = $this->sql()->prepare("delete from equipment where id = :id");
        $delete->bindValue(":id", $id);
        $delete->execute();
    }

    public function deleteBooking($id)
    {
        $delete = $this->sql()->prepare("delete from booking where id = :id");
        $delete->bindValue(":id", $id);
        $delete->execute();
    }
}
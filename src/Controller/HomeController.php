<?php

namespace Controller;


use Repository\Repository;

class HomeController extends Controller
{
    public function bookingAction($params = null)
    {
        $repo = new Repository();
        $workplaces = $repo->getWorkplace();
        $persons = $repo->getPersons();
        $booking = $repo->getBooking();
        $this->render("booking.php", ['workplaces' => $workplaces, 'persons' => $persons, 'bookings' => $booking]);
    }

    public function addBookingAction($params = null)
    {
        $repo = new Repository();
        $booking = $repo->getBooking();
        if (isset($_POST['person'])) {
            $from = date("Y-m-d H:i:s", strtotime($_POST['from'] . ":00"));
            $to = date("Y-m-d H:i:s", strtotime($_POST['to'] . ":00"));
            //var_dump($from);
            if ($repo->checkBookDate($from, $to, $_POST['w_id'])) {
                $repo->insertBooking($from, $to, $_POST['person'], $_POST['w_id']);
                $booking = $repo->getBooking();
                $this->render("bookingReload.php", ['bookings' => $booking, 'wrong' => false]);
            } else {
                $booking = $repo->getBooking();
                $this->render("bookingReload.php", ['bookings' => $booking, 'wrong' => true]);
            }
        } else {
            $booking = $repo->getBooking();
            $this->render("bookingReload.php", ['bookings' => $booking, 'wrong' => false]);
        }
    }

    public function selectWorkplaceAction($params = null)
    {
        $repo = new Repository();
        if (isset($_POST['w_id'])) {
            $workplace = $repo->getWorkplaceOne($_POST['w_id']);
            $this->render("workplaceEq.php", ['workplace' => $workplace]);
        }
    }

    public function workplacemoveAction($params = null)
    {
        $repo = new Repository();
        $repo->moveEquipment($_POST['deviceId'], $_POST['placeId']);
        $workplace = $repo->getWorkplace();
        $this->render("workplaceReload.php", ['workplace' => $workplace]);

    }

    public function workplaceAction($params = null)
    {
        $repo = new Repository();

        $workplace = $repo->getWorkplace();
        $this->render("workplace.php", ['workplace' => $workplace]);
    }

    public function searchplaceAction($params = null)
    {
        $repo = new Repository();
        if ($_POST['place_name']) {
            $workplaces = $repo->getPlacesByName($_POST['place_name']);
        } else {
            $workplaces = $repo->getPlaces();
        }
        $this->render("workplaceList.php", ['workplaces' => $workplaces]);
    }

    public function addEquipmentAction($params = null)
    {
        $repo = new Repository();
        $workplaces = $repo->getPlaces();
        if (isset($_POST['addEquipment'])) {
            $repo->insertEquipment($_POST['type'], $_POST['model'], $_POST['workplace'], $_POST['year'], $_POST['price'], $_POST['description']);
            echo "<script type='text/javascript'>window.location = '/workplace';</script>";
        }
        $this->render("addequipment.php", ['workplaces' => $workplaces]);
    }

    public function editEquipmentAction($params = null)
    {
        $repo = new Repository();
        $equipment = $repo->getEquipment($params[0]);
        if (isset($_POST['editEquipment'])) {
            $repo->editEquipment($_POST['type'], $_POST['model'], $_POST['year'], $_POST['price'], $_POST['description'], $params[0]);
            $equipment = $repo->getEquipment($params[0]);
            $this->render("editequipment.php", ['equipment' => $equipment]);
        }
        $this->render("editequipment.php", ['equipment' => $equipment]);
    }

    public function deleteEquipmentAction($params = null)
    {
        $repo = new Repository();
        $repo->deleteEquipment($params[0]);
        echo "<script type='text/javascript'>window.location = '/workplace';</script>";
    }

    public function deleteBookingAction($params = null)
    {
        $repo = new Repository();
        $repo->deleteBooking($params[0]);
        echo "<script type='text/javascript'>window.location = '/booking';</script>";
    }
}
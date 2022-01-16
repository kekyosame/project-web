<?php
session_start();

include 'koneksi.php';

$user = $_SESSION['name'];
$postjmotor = $_POST['j_motor'];
$postjmobil = $_POST['j_mobil'];
$harga = $_POST['harga'];
$postjtiket = $_POST['j_tiket'];
$id = $_POST['id'];
$nm_place = $_POST['nm_place'];
$idu = $_SESSION['id'];

$sql = "INSERT INTO transaksi (id_place, name_place, id, user, price, p_motor, p_mobil, j_tiket) VALUES ('$id', '$nm_place', '$idu', '$user', '$harga', '$postjmotor', '$postjmobil', '$postjtiket')";
$transaksi = mysqli_query($connect, $sql);

if ($transaksi) {
    echo "Berhasil diinput";
    header("location: view/detail-data.php?id=$id");
    exit;
} else {

    echo '<script type="text/JavaScript">';
    echo 'alert("Anda sudah melakukan transaksi")';
    echo '</script>';
    header("location: view/detail-data.php?id=$id");
    exit;

}

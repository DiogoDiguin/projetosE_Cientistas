<?php
session_start();
$idCient = $_SESSION['idCientista'];

if(!isset($_SESSION['idCientista'])){
    header('Location: ../../../publico/Index.php');
}

$ativadorDarkMode = $_GET['ativa'];
include '../../conexaoBD/conecta.php';
session_start();

$conn = new PDO("mysql:host=".SERVERNAME.";dbname=".DBNAME, USERNAME, PASSWORD);

$sql_updateDarkMode = "UPDATE `t_cientista` SET `DARK_MODE`='$ativadorDarkMode' WHERE `ID_CIENTISTA` = '$idCient'";

$conn->exec($sql_updateDarkMode);
header("Location: ../../paginas/Opcoes.php");
?>
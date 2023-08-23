<?php
session_start();
$idCient = $_SESSION['idCientista'];

if(!isset($_SESSION['idCientista'])){
    header('Location: ../../../publico/Index.php');
}

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1ab94d0eba.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src = "../js/index.js"></script>
    <?php
        include '../../conexaoBD/conecta.php';
        $sql_darkMode = mysqli_query($conexao, "SELECT DARK_MODE FROM `t_cientista` WHERE `ID_CIENTISTA` = '$idCient'");
        while($aux = mysqli_fetch_assoc($sql_darkMode)){

            $ativador = $aux['DARK_MODE'];
        }
        if($ativador == 0){
            echo "<link rel=stylesheet href=../../../publico/Css/style.css>";
        }else{
            echo "<link rel=stylesheet href=../../../publico/Css/styleDarkMode.css>";
        }
    ?>
    <title>Telefone</title>
</head>
<body>

<div class="principal">
    <main class="container formulario2">
        <ul class = topicos>
            <strong>Telefones: </strong><br>
            <a href=../controllers/TelefoneINCLUIR.php target=_blank>Incluir</a><br><br>
            <a href="../../paginas/Opcoes.php">&#8592;</a><br>
            <?php
                include '../models/ExibirContatos.php';

                $exibirContatos = new exibirContatos();
                echo $exibirContatos->getDetalhes($idCient);
            ?>
        </ul>
    </main>
</div>
</body>
</html>
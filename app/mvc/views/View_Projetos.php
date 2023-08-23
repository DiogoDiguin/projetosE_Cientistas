<?php
session_start();
$idCient = $_SESSION['idCientista'];

if(!isset($_SESSION['idCientista'])){
    header('Location: ../../../publico/Index.php');
}

include '../../conexaoBD/conecta.php';
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
    <title>Projetos</title>
</head>
<body>

    <div class="principal">
        <main class="container formulario2">
            <strong>Projetos stuais: </strong><br>
            <a href=../controllers/projetoINCLUIR.php target=_blank>Incluir</a><br><br>
            <a href="../../paginas/Opcoes.php">&#8592;</a><br>
            <ul class = projetos>
                <?php
                
                include '../models/ExibirProjetos.php';

                $exibirProjetos = new exibirProjetos();
                echo $exibirProjetos->getDetalhes($idCient);

                ?>
            </ul>
        </main>
        <br>
    </div>
</body>
</html>
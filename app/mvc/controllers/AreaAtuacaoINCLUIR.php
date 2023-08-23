<?php
session_start();
$idCient = $_SESSION['idCientista'];

if(!isset($_SESSION['idCientista'])){
    header('Location: ../../../publico/Index.php');
}

include '../../conexaoBD/conexao.php';
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
    <title>INCLUIR Área de Atuação</title>
</head>
<body>

    <div class="principal">
        <main class="container formulario2">
            <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
                <label for="areaAtuacao"><Strong>Escolha a área de atuação:</Strong></label>
                    <div>
                        <select name="areaAtuacao" id="areaAtuacao" required>
                            <option value="">Selecione uma opção</option>
                        <?php
                            $sql_areasAtuacao = mysqli_query($conexao, "SELECT * FROM `t_area_atuacao` ORDER BY NOM_AREA_ATUACAO");

                            while($aux = mysqli_fetch_assoc($sql_areasAtuacao)){
                                $nomeArea = $aux['NOM_AREA_ATUACAO'];
                                $areaAtuacao = str_replace("_", " ", $nomeArea);
                                echo "<option value=$nomeArea>$areaAtuacao</option>";
                            }
                        ?>
                        </select>
                    </div>
                    <br>
                    <a href="../../paginas/Opcoes.php">&#8592;</a><br>
                <input type="submit" value="OK">
            </form>
        <!--</main>
    </div>-->

<?php
include 'AreaAtuacaoDAO.php';

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    $nomeAreaNova = htmlspecialchars($_REQUEST['areaAtuacao']);
    $sql_idAreaNova = mysqli_query($conexao, "SELECT `ID_AREA_ATUACAO` FROM `t_area_atuacao` WHERE `NOM_AREA_ATUACAO` = '$nomeAreaNova'");
    
    while($aux = mysqli_fetch_assoc($sql_idAreaNova)){
        $idAreaNova = $aux['ID_AREA_ATUACAO'];
    }

    if(!empty($nomeAreaNova)){

        $sql_code = "SELECT * FROM `t_area_atuacao_cientista` WHERE `ID_CIENTISTA` = '$idCient' AND `ID_AREA_ATUACAO` = '$idAreaNova'";
        $sql_query = $conexao->query($sql_code) or die("Falha na execução do código SQL: " . $conexao->error);

        $quantidade = $sql_query->num_rows;

        if($quantidade == 1) {
            echo "<br>Dados já existentes.
                </main>
            </div>";
        }else{

            $areaAtuacao1 = new AreaAtuacao($idCient, $idAreaNova);
                    
            $dao = new AreaAtuacaoDAO();
            $dao->insert($areaAtuacao1);
        }        
    }
}
?>
</body>
</html>
<?php
session_start();
$idCient = $_SESSION['idCientista'];

if(!isset($_SESSION['idCientista'])){
    header('Location: ../../../publico/Index.php');
}

if ($_SERVER["REQUEST_METHOD"] == "GET"){
    $idFormacao = $_GET['id'];
}

if(empty($idFormacao)){
    header('Location: ../views/View_Formacao.php');
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
    <title>EDITAR Formacao</title>
</head>
<body>

<div class="principal">
    <main class="container formulario2">
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">

            <?php     
                $sql_mostraFormacao = mysqli_query($conexao, "SELECT * FROM `t_formacao`,`t_titulacao` WHERE `t_titulacao`.`ID_TITULACAO` = `t_formacao`.`ID_FORMACAO` and `t_formacao`.`ID_CIENTISTA` = '$idCient' and `t_formacao`.`ID_FORMACAO` = '$idFormacao'");

                while($aux = mysqli_fetch_assoc($sql_mostraFormacao)){
                    $idFormacao = $aux['ID_FORMACAO'];
                    //$idFormacao = $aux['ID_TITULACAO'];
                    $nome = $aux['NOM_TITULACAO'];
                    $nomeAreaFormatado = str_replace("_", " ", $nome);
                    $dataInicio = explode("-",$aux['DTI_FORMACAO']);
                    $anoInicio = $dataInicio[0];
                    $mesInicio = $dataInicio[1];
                    $diaInicio = $dataInicio[2];

                    $dataFinal = explode("-",$aux['DTT_FORMACAO']);
                    $anoFinal = $dataFinal[0];
                    $mesFinal = $dataFinal[1];
                    $diaFinal = $dataFinal[2];

                    echo "<Strong>".$nomeAreaFormatado."</Strong><br>";
                    echo "<Strong>Início: </Strong>".$diaInicio."/".$mesInicio."/".$anoInicio."<br>";
                    echo "<Strong>Final: </Strong>".$diaFinal."/".$mesFinal."/".$anoFinal;
                }
            ?>           

                <br><br>
                <label for="nTitulacao"><Strong>Escolha a formação:</Strong></label>
                    <div>
                        <select name="nTitulacao" id="nTitulacao" required>
                        <option value=""><Strong>Selecione uma opção</Strong></option>
                        <?php
                            $sql_formacoes = mysqli_query($conexao, "SELECT * FROM `t_titulacao`");
                            while($aux = mysqli_fetch_assoc($sql_formacoes)){
                                $nomeFormacao = $aux['NOM_TITULACAO'];
                                $nomeFormacaoFormatado = str_replace("_", " ", $nomeFormacao);
                                echo "<option value=$nomeFormacao>$nomeFormacaoFormatado</option>";
                            }
                        ?>
                        </select>
                    </div>
                
                <br>
                <label for=nDtiFormacao><Strong>Data início:</Strong></label>
                    <div class=input-field>
                        <input type=date name=nDtiFormacao>
                        <div class=underline></div>
                    </div>
                <br>

                <label for=nDttFormacao><Strong>Data final/Previsão:</Strong></label>
                    <div class=input-field>
                        <input type=date name=nDttFormacao>
                        <div class=underline></div>
                    </div>
                <br>
            
            <input type="hidden" id="idFormacao" name="idFormacao" value="<?=$idFormacao?>">
            <a href="../views/View_Formacao.php">&#8592;</a><br>
            <input type=submit value=OK>
        </form>
    <!--</main>
</div>-->

<?php
include 'FormacaoDAO.php';

if($_SERVER["REQUEST_METHOD"] == "POST"){
    /*$dataAtual = date("Y-m-d");*/
    $nDataInicioFormacao =  date("Y-m-d", strtotime($_REQUEST['nDtiFormacao']));
    $nDataFimFormacao =  date("Y-m-d", strtotime($_REQUEST['nDttFormacao']));

    /*$nDataInicioFormacao =  htmlspecialchars($_REQUEST['nDtiFormacao']);
    $nDataFimFormacao =  htmlspecialchars($_REQUEST['nDttFormacao']);*/

    $idFormacao = htmlspecialchars($_REQUEST['idFormacao']);

    /*Definição do ID da nova TITULAÇÃO*/
    $novaTitulacao = htmlspecialchars($_REQUEST['nTitulacao']);
    $sql_novaTitulacao = mysqli_query($conexao, "SELECT `ID_TITULACAO` FROM `t_titulacao` WHERE `NOM_TITULACAO` = '$novaTitulacao'");
    
    while($aux = mysqli_fetch_assoc($sql_novaTitulacao)){
        $idTitulacaoNova = $aux['ID_TITULACAO'];
    }
    /**/
    
    if(!empty($novaTitulacao)){
        $dao = new FormacaoDAO();
        $dao->updateFormacao1($idTitulacaoNova, $idCient, $idFormacao);
    }

    if(!empty($nDataFimFormacao) and !empty($nDataInicioFormacao)){
        if($nDataFimFormacao > $nDataInicioFormacao){
            $dao = new FormacaoDAO();
            $dao->updateFormacao2($nDataInicioFormacao, $nDataFimFormacao, $idCient, $idFormacao);
        }
    }
}

echo "</main>
    </div>";
?>

</body>
</html>
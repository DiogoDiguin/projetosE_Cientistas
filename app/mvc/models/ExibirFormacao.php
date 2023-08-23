<?php

    include 'AbstradaExibir.php';
    
    final class exibirFormacao extends exibir{

        public function getDetalhes($idCient){
            include '../../conexaoBD/conexao.php';
                $sql_Formacoes = mysqli_query($conexao, "SELECT * FROM `t_formacao`,`t_titulacao` WHERE `t_titulacao`.`ID_TITULACAO` = `t_formacao`.`ID_FORMACAO` and `t_formacao`.`ID_CIENTISTA` = '$idCient'");

                while($aux = mysqli_fetch_assoc($sql_Formacoes)){
                    $idFormacao = $aux['ID_FORMACAO'];
                    //$idFormacao = $aux['ID_TITULACAO'];
                    $nomeFormacao = $aux['NOM_TITULACAO'];
                    $nomeFormacaoFormatado = str_replace("_", " ", $nomeFormacao);
                    $dataInicio = explode("-",$aux['DTI_FORMACAO']);
                    $anoInicio = $dataInicio[0];
                    $mesInicio = $dataInicio[1];
                    $diaInicio = $dataInicio[2];

                    $dataFinal = explode("-",$aux['DTT_FORMACAO']);
                    $anoFinal = $dataFinal[0];
                    $mesFinal = $dataFinal[1];
                    $diaFinal = $dataFinal[2];

                    echo "<li><Strong>".$nomeFormacaoFormatado."</Strong><br>";
                    echo "<Strong>Início: </Strong>".$diaInicio."/".$mesInicio."/".$anoInicio."<br>";
                    echo "<Strong>Final: </Strong>".$diaFinal."/".$mesFinal."/".$anoFinal;

                    echo "<br><a href=../controllers/FormacaoALTERAR.php?id=$idFormacao target=_blank>Alterar</a>";
                    echo "<br><a href=../controllers/FormacaoEXCLUIR.php?id=$idFormacao>Excluir</a><br><br></li>";
                }
        }

    }

?>
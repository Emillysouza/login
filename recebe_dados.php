<?php
//Conexão com banco de dados
require_once 'configBD.php';

function verificar_entrada($entrada){
    $saida = htmlspecialchars($entrada);
    $saida = stripslashes($saida);
    $saida = trim($saida);
    return $saida;//retorna a saida limpa
}

//teste se existe a ação
if(isset($_POST['action'])){
    if($_POST['action'] ='Cadastro'){

//teste se ação é igual a cadastro
        echo "\n<p>cadastro<p>";
        echo "\n<pre>";//pre-formatar
        print_r($_POST);
        echo "\n</pre>";
}else if($_POST['action'] ='Login'){

    //Senão, teste se ação é login
        echo "\n<p>cadastro<p>";
        echo "\n<pre>"; //pre-formatar
        print_r($_POST);
        echo "\n</pre>";
}else if($_POST['action'] ='Senha'){

    // Senão, teste se ação é recuperar senha
        echo "\n<p>cadastro<p>";
        echo "\n<pre>"; //pre-formatar
        print_r($_POST);
        echo "\n</pre>";

}else{
        header("location:index.php");
    }
}else{
    //Redirecionando para index.php. negado o acesso
    // a esse arquivo diretamente.
        header("location:index.php");
}
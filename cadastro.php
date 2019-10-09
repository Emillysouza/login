<?php

if (isset($_POST['nome'])) {
    echo "\n<h1>Envio de dados métodos <em>POST</em></h1>";

    echo "\n<pre>\n";
    print_r($_POST);  #Array
    echo "\n</pre>\n";

    print("<br><strong>Nome Completo: </strong>");
    print("$_POST[nome]");

    print("<br><strong>E-mail:</strong>");
    print("$_POST[email]");

    print("<br><strong>Data de Aniversario:</strong>");
    print("$_POST[data_de_nascimento]");

    print("<br><strong>Perfil Do Facebook:</strong>");
    print("$_POST[Perfil_do_facebook]");

    print("<br><strong>Imagem:</strong>");
    print("$_POST[imagem]");
}
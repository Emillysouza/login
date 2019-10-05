<?php
# Back-end

#Verifique se o métado GET está enviando dados
if(isset($_GET['nome'])){
echo "\n<h1>Envio de dados métodos <em>GET</em></h1>";

echo "$\n<pre>\n";
print_r($_GET);  #Array
echo "\n</pre>\n";

print("<br><strong>Nome: </strong>");
print("$_GET[nome]");

print("<br><strong>E-mail:</strong>");
print("$_GET[email]");

print("<br><strong>Senha:</strong>");
print("$_GET[senha]");

print("<br><strong>Data de Nascimento:</strong>");
print("$_GET[data_de_nascimento]");
}
#Verifica se o ...
if(isset($_POST['nome'])){
    echo "\n<h1>Envio de dados métodos <em>POST</em></h1>";

    echo "\n<pre>\n";
    print_r($_POST);  #Array
    echo "\n</pre>\n";

    print("<br><strong>Nome: </strong>");
    print("$_POST[nome]");

    print("<br><strong>E-mail:</strong>");
    print("$_POST[email]");

    print("<br><strong>Senha:</strong>");
    print("$_POST[senha]");

    print("<br><strong>Data de Nascimento:</strong>");
    print("$_POST[data_de_nascimento]");
}


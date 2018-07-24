<%@page import="java.sql.*, java.util.*"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : cadastro
    Created on : 19/07/2018, 15:38:56
    Author     : Aluisio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Cadastro de Cliente - Banco Teste IBM</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">Cadastro do Cliente</th>
                </tr>
            </thead>
            <tbody>
        </table>
        <form action="cadSucess.jsp" method="POST">
            <table>
                <tr>
                    <td><strong>Descrição: </strong></td>
                    <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de cadastro do Banco Teste IBM, aqui você
                            poderá abrir sua conta sem precisar comparecer pessoalmente ao banco. Por favor, preencha os campos com
                            cuidado e verifique cuidadosamente todas as informações inseridas aqui.</span></td>
                </tr>
                <tr>
                    <td><strong>Nome: </strong></td>
                    <td><input type="text" name="nomecli" value="" size="40"/>
                    </td>
                </tr>
                <tr>
                    <td><strong>Idade: </strong></td>
                    <td><input type="number" name="idadecli" value="" maxlength="2" size="2" /></td>
                </tr>
                <tr>
                    <td><strong>Endereço: </strong></td>
                    <td><input type="text" name="enderecocli" value="" size="40" /></td>
                </tr>
                <tr>
                    <td><strong>Cidade: </strong></td>
                    <td><input type="text" name="cidadecli" value="" size="15"/></td>
                </tr>
                <tr>
                    <td><strong>Estado: </strong></td>
                    <td><input type="text" name="estadocli" value="" size="25" /></td>
                </tr>
                <tr>
                    <td><strong>Nº da Conta: </strong></td>
                    <td><input type="number" name="ncontacli" maxlength="6" size="6" value="" /></td>
                </tr>
                <tr><td><input type="submit" value="Enviar" /></td></tr>
            </table>
        </form>
    </tbody>
</body>
</html>

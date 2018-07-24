<%-- 
    Document   : extrato
    Created on : 21/07/2018, 16:10:17
    Author     : Aluisio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Extratos - Banco Teste IBM</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">Extrato</th>
                </tr>
            </thead>
            <tbody>
        </table>
        <form action="showExt.jsp" method="GET">
            <table>
                <tr>
                    <td><strong>Descrição: </strong></td>
                    <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de extratos do Banco Teste IBM, aqui você
                            poderá visulizar o extrato de operações como pagamentos e depósitos sem precisar comparecer pessoalmente ao banco.
                            Por favor, verifique cuidadosamente todas as informações aqui mostradas.</span></td>
                </tr>
                <tr>
                    <td><strong>Nº da conta: </strong></td>
                    <td><input type="number" name="ncontacli" value="" maxlength="6" size="6"/></td>
                </tr>
                <tr>
                    <td><strong>Data da transação: </strong></td>
                    <td><input type="date" name="dataop" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Enviar" name="Enviar" /></td>
                </tr>
            </table>
        </form>
    </tbody>
</body>
</html>

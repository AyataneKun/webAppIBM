<%-- 
    Document   : transacoes
    Created on : 22/07/2018, 18:24:36
    Author     : Aluisio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Transações - Banco Teste IBM</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">Transações do dia</th>
                </tr>
            </thead>
            <tbody>
            <form action="showTrans.jsp" method="GET">
                <table>
                    <tr>
                        <td><strong>Descrição: </strong></td>
                        <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de transações do Banco Teste IBM, aqui você
                                poderá visulizar todas as transações como pagamentos e depósitos realizados no dia sem precisar comparecer pessoalmente 
                                ao banco. Por favor, verifique cuidadosamente todas as informações aqui mostradas.</span></td>
                    </tr>
                    <tr>
                        <td><strong>Data das transações: </strong></td>
                        <td><input type="date" name="dataop" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" name="Enviar" /></td>
                    </tr>
                </table>
            </form>
        </tbody>
    </table>
</body>
</html>

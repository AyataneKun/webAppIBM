<%-- 
    Document   : operacoes
    Created on : 21/07/2018, 15:02:30
    Author     : Aluisio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Operações Monetárias - Banco Teste IBM</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">Operações Monetárias</th>
                </tr>
            </thead>
            <tbody>
        </table>
        <form action="opSucess.jsp" method="POST">
            <table>
                <tr>
                    <td><strong>Descrição: </strong></td>
                    <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de operações monetárias do Banco Teste IBM, aqui você
                            poderá realizar operações como pagamentos e depósitos sem precisar comparecer pessoalmente ao banco. Por favor, preencha 
                            os campos com cuidado e verifique cuidadosamente todas as informações inseridas aqui.</span></td>
                </tr>
                <tr>
                    <td><strong>Nº da conta: </strong></td>
                    <td><input type="number" name="contau" value="" maxlength="6" size="6"/>
                    </td>
                </tr>
                <tr>
                    <td><strong>Nº da conta do favorecido: </strong></td>
                    <td><input type="number" name="contaf" value="" maxlength="6" size="6" /></td>
                </tr>
                <tr>
                    <td><strong>Data da transação: </strong></td>
                    <td><input type="date" name="dataop" value="" /></td>
                </tr>
                <tr>
                    <td><strong>Tipo da transação: </strong></td>
                    <td><input type="radio" name="tipoop" value="1" checked="checked" /> 1- Pagamentos 
                        <input type="radio" name="tipoop" value="2" /> 2- Depositos </td>
                </tr>
                <tr>
                    <td><strong>Valor(R$):</strong></td>
                    <td><input type="number" name="valor" value="" size="25" /></td>
                </tr>
                <tr><td><input type="submit" value="Enviar" /></td></tr>
            </table>
        </form>
    </tbody>
</body>
</html>

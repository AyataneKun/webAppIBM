<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 18/07/2018, 15:53:54
    Author     : Aluisio
--%>
<sql:query var="subjects" dataSource="jdbc/bancodb_ibm">
    SELECT subject_id, name FROM Subject
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Banco Teste IBM</title>
    </head>
    <body>
        <h1>Bem vindo ao Banco Teste IBM, sua interface para transações bancárias!</h1><table border="0">
            <thead>
                <tr>
                    <th>O Banco Teste IBM oferece a você cliente a possibilidade de vizualizar
                        facilmente seu saldo, além de operações como pagamentos e depositos.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para vizualizar todas as possíveis operações realizadas pelo
                        banco, por favor, clique na caixa abaixo:</td>
                </tr>
                <tr>
                    <td>
                        <form action="cadastro.jsp">
                            <strong>Cadastro de Cliente:</strong>
                            <input type="submit" value="Cadastre-se!" name="cadastro" />
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="operacoes.jsp">
                            <strong>Operações Monetárias:</strong>
                            <input type="submit" value="Realizar Operações." name="operacoes" />
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="extrato.jsp">
                            <strong>Extrato Bancário:</strong>
                            <input type="submit" value="Ver Extrato." name="extrato" />
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="transacoes.jsp">
                            <strong>Transações Diárias:</strong>
                            <input type="submit" value="Ver Transações." name="transacoes" />
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="showSaldo.jsp">
                            <strong>Saldos das Contas dos Clientes:</strong>
                            <input type="submit" value="Ver Saldos." name="saldos" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

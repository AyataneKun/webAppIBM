<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : showSaldo
    Created on : 23/07/2018, 14:53:49
    Author     : Aluisio
--%>

<sql:query var="saldoQuery" dataSource="jdbc/bancodb_ibm">
    SELECT nome, nconta, saldo FROM conta
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Saldos - Banco Teste IBM</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th colspan="2">Saldos das Contas do Banco IBM</th>
                </tr>
            </thead>
            <tbody>
        </table>
        <table>
            <tr>
                <td><strong>Descrição: </strong></td>
                <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de saldos do Banco Teste IBM, aqui você
                        poderá visulizar o saldo de todas as contas dos clientes sem precisar comparecer pessoalmente 
                        ao banco. Por favor, verifique cuidadosamente todas as informações aqui mostradas.</span></td>
            </tr>
        </table>
        <table border='1'>
            <tr>
                <th>Nome</th>
                <th>Nº da Conta</th>
                <th>Saldo</th>
            </tr>
            <c:forEach var="row" items="${saldoQuery.rowsByIndex}">
                <tr>
                    <c:forEach var="test" items="${row}" begin="0" end="0">
                        <td><b><c:out value="${test}"/></b></td>
                    </c:forEach>
                    <c:forEach var="test" items="${row}" begin="1" end="1">
                        <td><c:out value="${test}"/></td>
                    </c:forEach>
                    <c:forEach var="test" items="${row}" begin="2" end="2">
                        <c:if test="${test < 0}">
                            <td><span style="color: red;"><c:out value="${row[2]}"/></span></td>
                            </c:if>
                            <c:if test="${test >= 0}">
                            <td><span style="color: blue;"><c:out value="${row[2]}"/></span></td>
                            </c:if>
                        </c:forEach>
                </tr>
            </c:forEach>
            <form name="voltar" action="index.jsp">
                <td><input type="submit" value="Voltar ao Início" name="voltar" /></td>
            </form>
        </table>
    </body>
</html>

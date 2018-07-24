<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : showExt
    Created on : 21/07/2018, 16:54:57
    Author     : Aluisio
--%>

<sql:query var="extratoQuery" dataSource="jdbc/bancodb_ibm">
    SELECT Conta.nome, Operacoes.tipo, Operacoes.valor, Operacoes.data
    FROM Operacoes, Conta
    WHERE Operacoes.conta_fav = Conta.nconta AND Operacoes.conta_user = ? <sql:param value="${param.ncontacli} "/> AND Operacoes.data = ? <sql:param value="${param.dataop}"/>
</sql:query>

<c:set var="extratoDetails" value="${extratoQuery.rows[0]}"/>

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
        <table>
            <tr>
                <td><strong>Descrição: </strong></td>
                <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de extratos do Banco Teste IBM, aqui você
                        poderá visulizar o extrato de operações como pagamentos e depósitos sem precisar comparecer pessoalmente ao banco.
                        Por favor, verifique cuidadosamente todas as informações aqui mostradas.</span></td>
            </tr>
        </table>
        <table border='1'>
            <tr>
                <th>Favorecido</th>
                <th>Valor (R$)</th>
                <th>Data</th>
            </tr>
            <c:forEach var="row" items="${extratoQuery.rowsByIndex}">
                <tr>
                    <c:forEach var="test" items="${row}" begin="0" end="0">
                        <td><b><c:out value="${test}"/></b></td>
                    </c:forEach>
                    <c:forEach var="test" items="${row}" begin="1" end="1">
                        <c:if test="${test==1}">
                            <td><span style="color: red;"><c:out value="-${row[2]}"/></span></td>
                            </c:if>
                            <c:if test="${test==2}">
                            <td><span style="color: blue;"><c:out value="+${row[2]}"/></span></td>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="test" items="${row}" begin="3" end="3">
                        <td><b><c:out value="${test}"/></b></td>
                    </c:forEach>
                </tr>
            </c:forEach>
            <form name="voltar" action="index.jsp">
                <td><input type="submit" value="Voltar ao Início" name="voltar" /></td>
            </form>
        </table>
    </body>
</html>

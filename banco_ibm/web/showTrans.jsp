<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : showTrans
    Created on : 22/07/2018, 18:45:52
    Author     : Aluisio
--%>

<sql:query var="transQuery" dataSource="jdbc/bancodb_ibm">
    SELECT Conta.nome, Operacoes.conta_user, Operacoes.tipo, Operacoes.valor
    FROM Operacoes, Conta
    WHERE Operacoes.data = ? <sql:param value="${param.dataop}"/> AND Operacoes.conta_user = Conta.nconta
</sql:query>

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
        </table>
        <table>
            <tr>
                <td><strong>Descrição: </strong></td>
                <td><span style="font-size:smaller; font-style:italic;">Bem vindo a página de transações do Banco Teste IBM, aqui você
                        poderá visulizar todas as transações como pagamentos e depósitos realizados no dia sem precisar comparecer pessoalmente 
                        ao banco. Por favor, verifique cuidadosamente todas as informações aqui mostradas.</span></td>
            </tr>
        </table>
        <table border='1'>
            <tr>
                <th>Nome</th>
                <th>Nº da Conta</th>
                <th>Tipo de Operação</th>
                <th>Valor (R$)</th>
            </tr>
            <c:forEach var="row" items="${transQuery.rowsByIndex}">
                <tr>
                    <c:forEach var="test" items="${row}" begin="0" end="0">
                        <td><b><c:out value="${test}"/></b></td>
                    </c:forEach>
                    <c:forEach var="test" items="${row}" begin="1" end="1">
                        <td><c:out value="${test}"/></td>
                    </c:forEach>
                    <c:forEach var="test" items="${row}" begin="2" end="2">
                        <c:if test="${test==1}">
                            <td><span style="color: red;"><c:out value="Pagamento"/></span></td>
                            <td><span style="color: red;"><c:out value="${row[3]}"/></span></td>
                            </c:if>
                            <c:if test="${test==2}">
                            <td><span style="color: blue;"><c:out value="Depósito"/></span></td>
                            <td><span style="color: blue;"><c:out value="${row[3]}"/></span></td>
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

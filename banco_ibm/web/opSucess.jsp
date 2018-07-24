<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : opSucess
    Created on : 21/07/2018, 15:23:15
    Author     : Aluisio
--%>

<sql:update var="addOperacao" dataSource="jdbc/bancodb_ibm">
    INSERT INTO Operacoes (conta_user, conta_fav, data, tipo, valor)
    VALUES ('${param.contau}', '${param.contaf}', '${param.dataop}', '${param.tipoop}', '${param.valor}')
</sql:update>

<sql:update var="attSaldoDep" dataSource="jdbc/bancodb_ibm">
    UPDATE Conta
    SET Conta.saldo = Conta.saldo + ${param.valor}
    WHERE ${param.tipoop} = 2 AND Conta.nconta = '${param.contaf}'
</sql:update>

<sql:update var="attSaldoPag" dataSource="jdbc/bancodb_ibm">
    UPDATE Conta
    SET Conta.saldo = Conta.saldo + ${param.valor}
    WHERE ${param.tipoop} = 1 AND Conta.nconta = '${param.contaf}'
</sql:update>

<sql:update var="attSaldoPag2" dataSource="jdbc/bancodb_ibm">
    UPDATE Conta
    SET Conta.saldo = Conta.saldo - ${param.valor}
    WHERE ${param.tipoop} = 1 AND Conta.nconta = '${param.contau}'
</sql:update>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Operações Monetárias - Banco Teste IBM</title>
    </head>
    <body>
        <h1>Operação monetária realizada com sucesso!</h1>
        <form name="voltar" action="index.jsp">
            <td><input type="submit" value="Voltar ao Início" name="voltar" /></td>
        </form>
    </body>
</html>

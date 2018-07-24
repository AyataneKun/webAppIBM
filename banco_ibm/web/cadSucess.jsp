<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : cadSucess.jsp
    Created on : 19/07/2018, 22:42:56
    Author     : Aluisio
--%>

<sql:update var="addConta" dataSource="jdbc/bancodb_ibm">
    INSERT INTO Conta (nconta, nome, idade, endereco, cidade, estado, saldo)
    VALUES ('${param.ncontacli}', '"${param.nomecli}"', '${param.idadecli}', '"${param.enderecocli}"', '"${param.cidadecli}"', '"${param.estadocli}"', '0')
</sql:update>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Cadastro de Cliente - Banco Teste IBM</title>
    </head>
    <body>
        <h1>Cliente cadastrado com sucesso!</h1>
        <form name="voltar" action="index.jsp">
            <td><input type="submit" value="Voltar ao Início" name="voltar" /></td>
        </form>
    </body>
</html>

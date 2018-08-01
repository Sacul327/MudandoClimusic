<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<title>Es el index</title>
</head>
<body>
	<h1>Estoy en el index.jsp</h1>
	<a href='<c:url value="/about"/>'>Acerca de</a><br/>
	<a href='<c:url value="/admin"/>'>Gestionar Administradores</a>
	
	<br/>
	Desde el Modelo<c:out value="${mensajeEnviado}"></c:out><br/>
	<b>Variables desde el ambito de la session: </b><c:out value="${sessionScope.resultado}"/>

	<h2>Para el uso de Formularios con Spring</h2>
	<c:out value="${adminForm}"></c:out>
</body>
</html>
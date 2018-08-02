<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>*USER MANAGER*</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href=<c:url value="/resources/css/usuarioscss.css" /> rel="stylesheet">

</head>
<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" disabled>Lista Usuarios</a>

		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href='<c:url value="/pantallaVentasAdmin"/>'>Volver a Ventas</a>
					</li>
				</ul>
				
			</div>

		<div class="collapse navbar-collapse" id="myNavbar">
			<span class="navbar-toggler-icon"></span>
		</div>

		</nav>

		<div class="jumbotron">
			<div class="container text-center">

				<Form class="form-horizontal">
					<table class="table table-striped " id="tabla">
						<thead>
							<tr>
								<th>Id</th>
								<th>Nombre</th>
								<th>Apellido</th>
								<th>Documento</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${empleados}" var="empleado">

							<tr>
								<td><c:out value="${empleado.id_empleado}"/></td>
								<td><c:out value="${empleado.nombre}"/></td>
								<td><c:out value="${empleado.apellido}"/></td>
								<td><c:out value="${empleado.email}"/></td>
							</tr>
							
						</c:forEach>

						</tbody>
					</table>
				</form>
				<form class="form-signin" action="ServletUsuariosQuitar"
					method="post">
					<input name="numEmpleado" type="text" class="form-control"
						placeholder="N° de empleado" aria-label=""
						aria-describedby="basic-addon1">
					<div class="input-group-prepend">
						<button id="botonquitar" class="btn btn-primary btn-block"
							type="submit">Quitar usuario</button>
					</div>
				</form>

			</div>
		</div>
		<h3>Agregar usuario</h3>
		<div class="container-fluid bg-3">
		<sf:form action="${pageContext.request.contextPath}/empleado/save" method="post" commandName="empleado">
			<c:if test="${empleado.id_empleado ne 0 }">
			<sf:input path="id_empleado" type="hidden"/>
			</c:if>
		<div class="form-row col-md-6">
					<label for="inputNombre">Nombre:</label> <sf:input cssClass="form-control" path="nombre"/>
				</div>
				<div class="form-row col-md-6">
					<label for="inputApellido">Apellido :</label> <sf:input cssClass="form-control" path="apellido"/>
				</div>
				<div class="form-row col-md-6">
					<label for="inputDocumento">Documento :</label> <sf:input cssClass="form-control" path="documento"/>
				</div>
				<div class="form-row col-md-6">
					<label for="inputEmail">Email :</label> <sf:input cssClass="form-control" path="email"/>
				</div>
				<div class="form-row col-md-6">
					<label for="inputContrasenia">Contraseña :</label> <sf:input cssClass="form-control" path="password"/>
				</div>
				<div class="form-row col-md-6">
					<label for="inputPrivilegio">Privilegio :</label> <sf:input cssClass="form-control" path="permiso"/>
				</div>
<%-- 		<c:if test="${admin.idAd ne 0 }"> --%>
<%-- 			<sf:input path="idAd" type="hidden"/> --%>
<%-- 			<sf:input path="fechaCreacion" type="hidden"/> --%>
<%-- 		</c:if> --%>
			<div style="padding-top: 200px;">
			<button id="adduser" class="btn btn-lg btn-info " type="submit">Agregar	usuario</button>
			</div>
	
		</sf:form>
<!-- 				<button id="adduser" class="btn btn-lg btn-info " type="submit">Agregar -->
<!-- 					usuario</button> -->
			

	</div>


</body>
</html>
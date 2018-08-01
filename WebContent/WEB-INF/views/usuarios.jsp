<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
    
<%-- <%@ page import="org.springframework.context.ApplicationContext" %> --%>
<%-- <%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %> --%>
<%-- <%@ page import="com.Climusic.Daos.EmpleadoDao"%> --%>
<%-- <%@ page import="com.Climusic.Modelos.Empleado" %> --%>
<%-- <%@ page import="java.util.List"%> --%>
<%-- <%@ page import="org.springframework.jdbc.CannotGetJdbcConnectionException" %> --%>
<%-- <%@ page import="org.springframework.dao.DataAccessException" %> --%>


<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <title>*USER MANAGER*</title> -->
<!-- <meta charset="utf-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<!-- <link href="css/usuarioscss.css" rel="stylesheet"> -->

<!-- </head> -->
<!-- <body> -->
	
<!-- 		<nav class="navbar navbar-inverse navbar-fixed-top"> -->

<!-- 		<div class="navbar-header"> -->
<!-- 			<button type="button" class="navbar-toggle" data-toggle="collapse" -->
<!-- 				data-target="#myNavbar"> -->
<!-- 				<span class="icon-bar"></span> <span class="icon-bar"></span> <span -->
<!-- 					class="icon-bar"></span> -->
<!-- 			</button> -->
<!-- 			<a class="navbar-brand" disabled>Lista Usuarios</a> -->

<!-- 		</div> -->
<!-- 		<div class="collapse navbar-collapse" id="navbarResponsive"> -->
<!-- 				<ul class="navbar-nav"> -->
<!-- 					<li class="nav-item"><a class="nav-link" href="pantalla_ventas_admin.jsp">Ventas</a> -->
<!-- 					</li> -->
<!-- 					<li class="nav-item"><a class="nav-link" href="usuarios.jsp">Administrar Usuarios</a> -->
<!-- 					</li> -->
<!-- 				</ul> -->
				
<!-- 			</div> -->

<!-- 		<div class="collapse navbar-collapse" id="myNavbar"> -->
<!-- 			<span class="navbar-toggler-icon"></span> -->
<!-- 		</div> -->

<!-- 		</nav> -->

<!-- 		<div class="jumbotron"> -->
<!-- 			<div class="container text-center"> -->

<!-- 				<Form class="form-horizontal"> -->
<!-- 					<table class="table table-striped " id="tabla"> -->
<!-- 						<thead> -->
<!-- 							<tr> -->
<!-- 								<th>Id</th> -->
<!-- 								<th>Nombre</th> -->
<!-- 								<th>Apellido</th> -->
<!-- 								<th>Documento</th> -->
<!-- 							</tr> -->
<!-- 						</thead> -->
<!-- 						<tbody> -->
<%-- 							<% --%>
// 							  ApplicationContext app = new ClassPathXmlApplicationContext("Spring.xml");
// 							  EmpleadoDao empleadodao = (EmpleadoDao) app.getBean("EmpleadoDao");
								
// 									try {
// 										List<Empleado> emp = empleadodao.buscarTodos();
// 										for (Empleado emp2 : emp) {
<%-- 							%> --%>
<!-- 							<tr> -->
<%-- 								<td><%=emp2.getId_empleado()%></td> --%>
<%-- 								<td><%=emp2.getNombre()%></td> --%>
<%-- 								<td><%=emp2.getApellido()%></td> --%>
<%-- 								<td><%=emp2.getDocumento()%></td> --%>
<!-- 							</tr> -->
<%-- 							<% --%>
// 								}
// 									} catch (CannotGetJdbcConnectionException ex) {
// 										ex.printStackTrace();
// 									} catch (DataAccessException e) {
// 										e.printStackTrace();
// 									}
								
// 								((ClassPathXmlApplicationContext) app).close();
<%-- 							%> --%>

<!-- 						</tbody> -->
<!-- 					</table> -->
<!-- 				</form> -->
<!-- 				<form class="form-signin" action="ServletUsuariosQuitar" -->
<!-- 					method="post"> -->
<!-- 					<input name="numEmpleado" type="text" class="form-control" -->
<!-- 						placeholder="N° de empleado" aria-label="" -->
<!-- 						aria-describedby="basic-addon1"> -->
<!-- 					<div class="input-group-prepend"> -->
<!-- 						<button id="botonquitar" class="btn btn-primary btn-block" -->
<!-- 							type="submit">Quitar usuario</button> -->
<!-- 					</div> -->
<!-- 				</form> -->

<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<h3>Agregar usuario</h3> -->
<!-- 		<div class="container-fluid bg-3"> -->
<!-- 			<form class="form-horizontal" action="ServletUsuarios" method="post"> -->

<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputNombre">Nombre:</label> <input name="nombre" -->
<!-- 						type="text" class="form-control" id="inputNombre" -->
<!-- 						placeholder="nombre..."> -->
<!-- 				</div> -->
<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputApellido">Apellido :</label> <input -->
<!-- 						name="apellido" type="text" class="form-control" -->
<!-- 						id="inputApellido" placeholder="Apellido..."> -->
<!-- 				</div> -->
<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputDocumento">Documento :</label> <input type="text" -->
<!-- 						name="documento" class="form-control" id="inputDocumento" -->
<!-- 						placeholder="N° Documento..."> -->
<!-- 				</div> -->
<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputEmail">Email :</label> <input type="email" -->
<!-- 						name="email" class="form-control" id="inputEmail" -->
<!-- 						placeholder="Email..."> -->
<!-- 				</div> -->
<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputContrasenia">Contraseña :</label> <input -->
<!-- 						type="password" name="contrasena" class="form-control" -->
<!-- 						id="inputContrasenia" placeholder="Contraseña..."> -->
<!-- 				</div> -->
<!-- 				<div class="form-row col-md-6"> -->
<!-- 					<label for="inputPrivilegio">Privilegio :</label> <input -->
<!-- 						type="text" name="privilegio" class="form-control" -->
<!-- 						id="inputPrivilegio" placeholder="Ingrese: admin O vendedor"> -->
<!-- 				</div> -->
<!-- 				<button id="adduser" class="btn btn-lg btn-info " type="submit">Agregar -->
<!-- 					usuario</button> -->
<!-- 			</form> -->

<!-- 		</div> -->


<!-- </body> -->
<!-- </html> -->
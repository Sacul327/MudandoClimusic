<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ventas</title>
	<!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
	<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg xx navbar-light bg-light fixed-top">
		<div class="container">
			<a class="navbar-brand" href='<c:url value="/"/>'><img
				src='<c:url value="/resources/images/ClimusiclogoCortado.jpg"/>' class="img-responsive imagen"
				style="width: 15%" alt="Image"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href='<c:url value="/"/>'>Inicio</a>
					</li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="/location"/>'>Encuentranos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="/springLog"/>'><span
							class="glyphicon glyphicon-user"></span> Log In</a></li>
					<li class="nav-item"><a class="nav-link" href=""><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
				
			</div>
		</div>
	</nav>
	
<!-- 	Jumbotron Items -->
	<div class="jumbotron">
		
			<Form class="form-horizontal" >
						<table class="table table-striped " id="tabla">
							<thead>
								<tr>
									<th>N° Producto</th>
									<th>Marca</th>
									<th>Modelo</th>
									<th>Precio</th>
									<th>Stock</th>
									<th>Color</th>
									<th>Tipo</th>
									<th>Detalle</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productos}" var="producto">
								<tr>
									<td><c:out value="${producto.id_instrumento}"/></td>
									<td><c:out value="${producto.marca}"/></td>
									<td><c:out value="${producto.modelo}"/></td>
									<td><c:out value="${producto.precio}"/></td>
									<td><c:out value="${producto.stock}"/></td>
									<td><c:out value="${producto.color}"/></td>
									<td><c:out value="${producto.tipo}"/></td>
									<td><a href="<c:url value='/carro/${producto.id_instrumento}/save'/>">add to Cart</a></td>
								</tr>
								</c:forEach>
								</tbody>
						</table>
					</form>
			
	</div>
<!-- 	Jumbotron Carrito -->
	<div class="jumbotron">
		
		<Form class="form-horizontal" id="tablapadre">
						<table class="table table-striped " id="tabla">
							<thead>
								<tr>
									<th>N° Producto</th>
									<th>Marca</th>
									<th>Modelo</th>
									<th>Precio</th>
									<th>Color</th>
									<th>Borrar</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${carros}" var="carro">
								<tr>
									<td><c:out value="${carro.id_carro}"/></td>
<%-- 									<td><c:out value="${carro.facturaBase}"/></td> --%>
									<td><c:out value="${carro.productos.marca}"/></td>
									<td><c:out value="${carro.productos.modelo}"/></td>
									<td><c:out value="${carro.productos.precio}"/></td>
									<td><c:out value="${carro.productos.color}"/></td>
									<td><a href="<c:url value='/carro/${carro.id_carro}/delete'/>">drop</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</form>
	
	</div>
</body>
</html>
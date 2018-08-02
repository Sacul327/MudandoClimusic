<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Ventas</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">

<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<link href="<c:url value="/resources/css/pantalladVentas.css" />" rel="stylesheet">
</head>
<body>
<!-- 	NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href='<c:url value="/"/>'><h2>Climusic</h2></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item disabled"><a class="nav-link" href='<c:url value="/pantallaVentasAdmin"/>'>ventas</a></li>
			<li class="nav-item"><a class="nav-link" href='<c:url value="/Usuarios"/>'>Administrar
					Usuarios</a></li>
		</ul>
	</div>
	</nav>
	<form>
		<div class="container-fluid">
			<div class="row content">
				<div class="col-sm-5 sidenav tall">
					<h1>Climusic</h1>
<!-- 					DropDown -->
					<div class="dropdown">
						<a id="dpinstrumentos" class="btn btn-secondary dropdown-toggle"
							href="#" role="button" id="dropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Instrumentos </a>

						<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item" href="#">Guitarra</a> <a
								class="dropdown-item" href="#">Bajo</a> <a class="dropdown-item"
								href="#">Bateria</a>
						</div>
					</div>
					</br>
<!-- 					Checkbox -->
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<input type="checkbox"
									aria-label="Checkbox for following text input">
							</div>
						</div>
						<h4>Usa tarjeta</h4>
					</div>
<!-- 					Lista Carrito -->
					<Form class="form-horizontal" id="tablapadre">
						<table class="table table-striped " id="tabla">
							<thead>
								<tr>
									<th>N° Producto</th>
									<th>Marca</th>
									<th>Modelo</th>
									<th>Precio</th>
									<th>Color</th>
									<th>Tipo</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>


								</tr>
							</tbody>
						</table>
					</form>
<!-- 					Drop from cart -->
					<form class="form-horizontal" action="ServletCartQuitar"
						method="post">
					<div id="dropcart" class="input-group mb-3">
						<div class="input-group-prepend">
							<button class="btn btn-outline-secondary" type="submit">drop
								from cart</button>
						</div>
						<input name="NroProductoDrop" type="text" class="form-control" aria-label=""
							aria-describedby="basic-addon1" placeholder="N° de producto">
					</div>
					</form>



				</div>
<!-- 				Vert Layout derecha -->
				<div class="col-sm-5">
					<Form class="form-horizontal" id="tablapadre">
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
									<td><c:out value="${producto.tipo_detalle}"/></td>
								</tr>
								</c:forEach>
								</tbody>
						</table>
					</form>
<!-- 					navegador para la lista -->

<!-- 					Lista de productos Stockdentro del nav -->

<!-- 					Agregar al carro codigo -->
					<form class="form-horizontal" action="ServletCart"
						method="post">
					<div id="addcart" class="input-group mb-3" >
						<div class="input-group-prepend">
							<button class="btn btn-outline-secondary" type="submit">Add
								to cart</button>
						</div>
						<input name="NroProducto" type="text" class="form-control"
							placeholder="N° de producto" aria-label=""
							aria-describedby="basic-addon1">
					</div>
					</form>
<!-- 					Descripcion de los productos -->
					<div class="card" style="width: 18rem;">
						<div class="card-body">
							<h5 class="card-title">Descripcion del producto :</h5>
							<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="card-link">Card link</a> <a href="#"
								class="card-link">Another link</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>

		<footer class="container-fluid fixed-bottom"> <input href="factura.jsp"
			class="btn btn-primary" type="submit" value="Submit"> </footer>
	</form>
</body>
</html>
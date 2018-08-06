<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Guitarras - Climusic</title>

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
					<li class="nav-item"><a class="nav-link" href='<c:url value="/login"/>'><span
							class="glyphicon glyphicon-user"></span> Log In</a></li>
					<li class="nav-item"><a class="nav-link" href=""><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
				
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">Instrumentos</h1>
				<div class="list-group">
					<a href='<c:url value="/guitarras"/>' class="list-group-item">Guitarras</a> <a
						href='<c:url value="/bajos"/>' class="list-group-item">Bajos</a> <a href="#"
						class="list-group-item">Baterias</a> <a href="#"
						class="list-group-item">Teclados</a> <a href="#"
						class="list-group-item">Microfonos</a> <a href="#"
						class="list-group-item">Consolas</a> <a href="#"
						class="list-group-item">Equipos</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div class="row sp">
	
				<c:forEach items="${productos}" var="productos">
					<div class="col-lg-4 col-md-6 mb-4">
					
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src='<c:out value="${productos.img}"/>' alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<h4><c:out value="${productos.marca}"/> <c:out value="${productos.modelo}"/></h4>
								</h4>
								<h5>$<c:out value="${productos.precio}"/></h5>
<!-- 								<p class="card-text">Lorem ipsum dolor sit amet, consectetur -->
<!-- 									adipisicing elit. Amet numquam aspernatur!</p> -->
							</div>
<!-- 							<div class="card-footer"> -->
<!-- 								<small class="text-muted">&#9733; &#9733; &#9733; -->
<!-- 									&#9733; &#9734;</small> -->
<!-- 							</div> -->
						</div>
								
					</div>
			
			</c:forEach>

				</div>
				
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Climusic 2018</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src='<c:url value="/resources/jquery/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>

</body>

</html>
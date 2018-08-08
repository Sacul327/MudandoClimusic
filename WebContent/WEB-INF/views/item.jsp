<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portfolio Item - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/portfolio-item.css"/>" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Portfolio Item Heading -->
      <h1 class="my-4">Page Heading
        <small>Secondary Text</small>
      </h1>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-8">
           <img class="img-fluid" src='<c:url value="/${producto.img} "/>' alt=""> 
<!-- 				<img class="card-img-top" -->
<!-- 								src="" alt=""> -->
        </div>

        <div class="col-md-4">
          <h3 class="my-3">Project Description</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
          <h3 class="my-3">Project Details</h3>
          <ul>
            <li><c:out value="${producto.marca}"/></li>
            <li><c:out value="${producto.modelo}"/></li>
            <li><c:out value="${producto.precio}"/></li>
            <li><c:out value="${producto.tipo}"/></li>
          </ul>
        </div>

      </div>
      <!-- /.row -->

      <!-- Related Projects Row -->
      <h3 class="my-4">Related Projects</h3>

      <div class="row">
		<c:forEach items="${listFiltrada}" var="listFiltrada">
        <div class="col-lg-4 col-md-6 mb-4">
					
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src='<c:out value="/${listFiltrada.img}"/>' alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<h4><c:out value="${listFiltrada.marca}"/> <c:out value="${listFiltrada.modelo}"/></h4>
								</h4>
								<h5>$<c:out value="${listFiltrada.precio}"/></h5>
<!-- 								<p class="card-text">Lorem ipsum dolor sit amet, consectetur -->
<!-- 									adipisicing elit. Amet numquam aspernatur!</p> -->
							</div>
							<div class="card-footer">
							<a href="<c:url value='select/${listFiltrada.id_instrumento}/item'/>"><button type="button" class="btn btn-sm btn-outline-secondary" >View more</button></a>
<!-- 								<small class="text-muted">&#9733; &#9733; &#9733; -->
<!-- 									&#9733; &#9734;</small> -->
							</div>
						</div>
								
					</div>
		</c:forEach>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src='<c:url value="/resources/jquery/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>

  </body>

</html>

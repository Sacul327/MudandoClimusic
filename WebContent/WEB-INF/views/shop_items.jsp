<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Productos - Climusic</title>

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

	<!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Instrumentos</h1>
          <div class="list-group">
            <a href='<c:url value="/guitarras"/>' class="list-group-item">Guitarras</a>
            <a href='<c:url value="/bajos"/>' class="list-group-item">Bajos</a>
            <a href="#" class="list-group-item">Baterias</a>
            <a href="#" class="list-group-item">Teclados</a>
            <a href="#" class="list-group-item">Microfonos</a>
            <a href="#" class="list-group-item">Consolas</a>
            <a href="#" class="list-group-item">Equipos</a>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src='<c:url value="/resources/images/modificartamanio/Gibson_sg_Custom_1963.jpg"/>' alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src='<c:url value="/resources/images/modificartamanio/danelectro2.jpg"/>' alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src='<c:url value="/resources/images/modificartamanio/presicionbass.jpg"/>' alt="Third slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src='<c:url value="/resources/images/modificartamanio/stratocaster.jpg"/>' alt="Fourth slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a class="" href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/hartke.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Hartke Hydrive 115C</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/bossloopstation.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Boss Loop Station</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/ibanez_pf15ece_nt.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Iba�ez acustic guitar</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/ibanezsr300e.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Iba�ez SR300</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/synthmicrokorg.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">KORG Microkorg</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src='<c:url value="/resources/images/700x400/tamastarclasic.jpg"/>' alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Tama Star Clasic</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-4 bg-dark">
      <div class="container">
		<p class="m-0 text-center text-white">Copyright � Climusic 2018 <img src="/SpringHibernateWeb/resources/images/TGVlogo2.png" class="img-responsive" style="width:5%;padding-right: 20px;" alt="Image"></p>        
      </div>
      
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
<!--     <script src="jquery/jquery.min.js"></script> -->
   	<script src='<c:url value="/resources/jquery/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
    

  </body>

</html>
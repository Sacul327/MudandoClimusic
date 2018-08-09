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

    <title>Encuentranos - Climusic</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

	<style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-white fixed-top">
      <div class="container">
        <a class="navbar-brand" href='<c:url value="/"/>'><img src='<c:url value="/resources/images/ClimusiclogoCortado.jpg"/>' class="img-responsive imagen" style="width: 15%" alt="Image"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href='<c:url value="/"/>'>Home</a>
            </li>
           
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
		
		<h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: -34.607899,  lng: -58.372554};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUReV2FAItzhX9QSlVUN6rwqoEd6MM9is&callback=initMap">
    </script>
		
		
		
		
     
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-4 bg-dark fixed-bottom">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Climusic 2018</p>
        <img src='<c:url value="/resources/images/TGVlogo2.png"/>' class="img-responsive imagen" style="width:5%" alt="Image">
      </div>
      
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="jquery/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>

  </body>

</html>
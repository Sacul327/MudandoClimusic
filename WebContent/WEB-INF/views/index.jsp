<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
  <title>Climusic</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
     
      background-color: #fff;
      margin-bottom: 40px;
      background: url(resources/images/tienda2.jpg)no-repeat center center ;
      height: 350px;
      width: 100%;
      background-color: #262626;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    #img{
    	position: relative;
    }
    .foto{
    	height: 239px;
    }
    .imagen{
    	position: absolute;
        top: 50%;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%)
    }
    .panel-heading{
    	background-color: #64dec1
    }
  </style>
  
</head>
<body>



<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="">Climusic</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href='<c:url value="/"/>'>Inicio</a></li>
        <li><a href='<c:url value="/Productos"/>'>Productos</a></li>
        <li><a href='<c:url value="/location"/>'>Encuentranos</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href='<c:url value="/springLog"/>'><span class="glyphicon glyphicon-user"></span> Log In</a></li>
        <li><a href=""><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
	<div class="jumbotron">
		<div class="container text-center">
			<div class="panel-body">
				
			</div>
		</div>
	</div>

	<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-secondary">
        <div class="panel-heading">REBAJA EFECTIVO</div>
        <div class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal7.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer"> Fender stratocaster 90°</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-secondary">
        <div class="panel-heading">REBAJA EFECTIVO</div>
        <div class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal8.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer">Gibson thunderbird</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-secondary">
        <div class="panel-heading">REBAJA EFECTIVO</div>
        <div id="img" class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal9.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer">Fender Telecaster DELUXE</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-secondary">
        <div class="panel-heading">Cuotas sin interes disponibles</div>
        <div class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal10.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer">Squier acoustic guitar</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-secondary">
        <div class="panel-heading">Cuotas sin interes disponibles</div>
        <div class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal11.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer">ibañez 5 String active bass</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-secondary">
        <div class="panel-heading">Cuotas sin interes disponibles</div>
        <div class="panel-body foto"><img src='<c:url value="/resources/images/principal_deal7.jpg"/>' class="img-responsive imagen" style="width:75%" alt="Image"></div>
        <div class="panel-footer">Gibson Les Paul Special Edition </div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Climusic - Copyright</p>  
<!--   <form class="form-inline">Get deals: -->
<!--     <input type="email" class="form-control" size="50" placeholder="Email Address"> -->
<!--     <button type="button" class="btn btn-danger">Sign Up</button> -->
  </form>
</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="<c:url value="/resources/css/estilo.css" />" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <title>Log In - Climusic</title>
    
   	<style>
   	
   	.pos{
   		margin-bottom: 30px;
   		margin-left: 8px;
   	}
   	
   	
   	</style> 
   
  </head>

  <body class="text-center">
 
    <sf:form action="${pageContext.request.contextPath}/empleado/ingreso" method="post" commandName="empleado" cssClass="form-signin">
      <a class="navbar-brand" href='<c:url value="/"/>'><img src='<c:url value="/resources/images/ClimusiclogoCortado.jpg"/>' class="img-responsive pos" style="width: 100%" alt="Image"></a>
      <h3 class="h6 mb-3 font-weight-normal">Please sign in</h3>
      <label for="inputEmail" class="sr-only">Email address</label>
      <sf:input cssClass="form-control mb-2" path="email"/>
      <label for="inputPassword" class="sr-only">Password</label>
      <sf:input cssClass="form-control mb-2" path="password"/>
      <button class="btn btn-lg btn-info btn-block bg-red" type="submit">Sign in</button>
      
    </sf:form>
  </body>
</html>

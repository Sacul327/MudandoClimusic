<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<title>AddUser</title>
</head>
<body>
	<div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2>Agregar usuarios</h2>
      </div>

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Usuarios existentes</span>
          </h4>
          <ul class="list-group mb-3">
          <c:forEach items="${empleados}" var="empleado">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0"><c:out value="${empleado.nombre}"/> <c:out value="${empleado.apellido}"/></h6>
                <small class="text-muted"><c:out value="${empleado.email}"/></small>
              </div>
            </li>
		  </c:forEach>
          </ul>

        </div>
        
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Informacion del usuario</h4>
          <sf:form action="${pageContext.request.contextPath}/empleado/save" method="post" commandName="empleado">
			<c:if test="${empleado.id_empleado ne 0 }">
			<sf:input path="id_empleado" type="hidden"/>
			</c:if>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Nombre</label>
                <sf:input cssClass="form-control" path="nombre"/>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Apellido</label>
                <sf:input cssClass="form-control" path="apellido"/>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email <span class="text-muted">(Optional)</span></label>
              <sf:input type="email" cssClass="form-control" path="email"/>
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="mb-3">
              <label for="address">Contraseña</label>
              <sf:password cssClass="form-control" path="password"/>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">Documento<span class="text-muted"></span></label>
              <sf:input cssClass="form-control" path="documento"/>
            </div>

            <hr class="mb-4">
            <h4 class="mb-3">Privilegio de usuario</h4>
            <div class="form-row col-md-6"> 
					<label>Privilegio (Ingrese 1 o 2):</label> <sf:input cssClass="form-control" path="permiso" />
				</div>
<!--             <div class="d-block my-3"> -->
<!--               <div class="custom-control custom-radio"> -->
<%--                 <sf:input cssClass="custom-control-input" path="permiso" type="radio" checked="" required="" value="1"/> --%>
<!--                 <label class="custom-control-label" for="credit">1</label> -->
<!--               </div> -->
<!--               <div class="custom-control custom-radio"> -->
<%--                 <sf:input cssClass="custom-control-input" path="permiso" type="radio" checked="" required="" value="2" /> --%>
<!--                 <label class="custom-control-label" for="debit">2</label> -->
<!--               </div> -->
				</br>
              <span class="text-muted">Los usuarios con privilegio 1 podran acceder a las configuraciones de usuarios(privilegio 2 solo es capaz de realizar ventas).</span>
<!--             </div> -->
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
          </sf:form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2017-2018 Company Name</p>
        <ul class="list-inline">
          <li class="list-inline-item"><a href="#">Privacy</a></li>
          <li class="list-inline-item"><a href="#">Terms</a></li>
          <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
      </footer>
    </div>
	<script src='<c:url value="/resources/jquery/jquery.min.js"/>'></script>
    <script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
</body>
</html>
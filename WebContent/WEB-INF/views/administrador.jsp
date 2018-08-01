<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<%-- <script type="text/javascript" src='<c:url value="/res/js/jquery-3.3.1.min.js" />'></script>
<script type="text/javascript" src='<c:url value="/res/js/bootstrap.min.js" />'></script>
<script type="text/javascript" src='<c:url value="/res/js/popper.min.js"'></script> --%>

<link href="/res/js/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src='<c:url value="/res/js/jquery-3.3.1.min.js" />'></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery(".confirm").on("click", function(){
			return confirm("Si eliminas este elemento no se podrá recuperar. ¿Continuar?");
		});
	});
</script>
<title>Pagina del administrador</title>
</head>
<body>
<h1>Es el administrador</h1>
Desde el Modelo<c:out value="${mensajeEnviado}"></c:out><br/>
Variables desde el ambito de la session: <c:out value="${sessionScope.resultado}"/>
<!-- commadName = hace referencia a nuestra clase POJO que uso -->
<sf:form action="${pageContext.request.contextPath}/admin/save" method="post" commandName="admin">
	<table>
		
		<c:if test="${admin.idAd ne 0 }">
			<sf:input path="idAd" type="hidden"/>
			<sf:input path="fechaCreacion" type="hidden"/>
		</c:if>
	
		<tr>
			<td>Nombre</td>
			<td><sf:input path="nombre"/> </td>
		</tr>
		<tr>
			<td>Cargo</td>
			<td><sf:input path="cargo"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Guardar Cambios"/></td>
		</tr>
	</table>
</sf:form>
<h3>El listado es:</h3>
<c:out value="${resultado }"/><br/>
<c:forEach items="${empleados}" var="admin">
	<c:out value="${empleado}"/>
	<a href='<c:url value="/admin/${empleado.nombre}/actualizar"/>'>Actualizar</a>
	<a class="confirm" href='<c:url value="/admin/${admin.apellido}/delete" />'>Eliminar</a>
	<br/>
</c:forEach>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Codificación de Caracteres -->
<meta charset="UTF-8">

<!-- Configuración inicial de ancho y escala -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Título de la página -->
<title>Veterinario</title>

<!-- Hoja de estilo -->
<link rel="stylesheet" href="<core:url value="/res/css/estilo.css" />">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link rel="stylesheet" href="<core:url value="/res/css/tabla.css" />">
</head>
<body>
	<header>
		<%@ include file='menu.jsp'%>
	</header>

    <img class="imagen-zoom1" src="/amigopeludo/res/img/Logoclinicaveterinaria.ico" alt="Logo de la empresa">

	<div class="container cuerpo" style="text-align: center; color: navy;">
		<h1 style="text-align: center; margin-bottom: 20px;">VETERINARIOS:</h1>


		<section>
			<table class="table table-striped table-bordered table-success">
				<thead class="table-danger">
					<tr>
						<th>ID</th>
						<th>NOMBRE</th>
						<th>ESPECIALIDAD</th>
						<th>EDITAR</th>
					</tr>
				</thead>
				<tbody class="table-transparent">
					<c:forEach var="p" items="${veterinarios}">
						<tr>
							<td><c:out value="${p.id}" /></td>
							<td><c:out value="${p.nombre}" /></td>
							<td><c:out value="${p.especialidad}" /></td>
							<td>
    <a href="<c:url value='/editarveterinarios/${p.id}' />">Editar</a>
</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<%@ include file='footer.jsp'%>
</body>
</html>

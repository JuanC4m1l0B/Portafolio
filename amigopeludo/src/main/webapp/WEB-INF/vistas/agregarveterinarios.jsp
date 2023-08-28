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
    
    <div class="container cuerpo" style="text-align: center; color: navy;">
    <h1 style="text-align: center; margin-bottom: 20px;">Agregar Veterinario:</h1>
    <form action="${pageContext.request.contextPath}/guardarVeterinario" method="post">
        <c:if test="${not empty veterinario}">
            <input type="hidden" name="id" value="${veterinario.id}">
        </c:if>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="<c:if test="${not empty veterinario}">${veterinario.nombre}</c:if>" required><br>
        <label for="especialidad">Especialidad:</label>
        <input type="text" id="especialidad" name="especialidad" value="<c:if test="${not empty veterinario}">${veterinario.especialidad}</c:if>" required><br>
        <button type="submit">Guardar</button>
    </form>
</div>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file='footer.jsp'%>
</body>
</html>
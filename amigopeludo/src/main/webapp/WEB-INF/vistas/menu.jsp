<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="<core:url value="/res/css/estilo.css" />">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
        crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/amigopeludo/" style="color: white;">
        <img class="imagen-zoom" src="/amigopeludo/res/img/Logoclinicaveterinaria.ico" alt="Logo de la empresa" style="max-height: 50px;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/amigopeludo/" style="color: white;">INICIO</a>
            </li>
   			 <li class="nav-item">
       		 <a class="nav-link" href="agregarveterinarios">CREAR VETERINARIOS</a>
    		 </li>
            <li class="nav-item">
                <a class="nav-link" href="veterinarios" style="color: white;">VETERINARIOS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="mascotas" style="color: white;">MASCOTAS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="historialesclinicos" style="color: white;">HISTORIAL CLINICO</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="vacunas" style="color: white;">VACUNAS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="citas" style="color: white;">CITAS</a>
            </li>
        </ul>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

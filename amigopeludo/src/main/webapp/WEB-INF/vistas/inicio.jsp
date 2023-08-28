<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <header>
        <%@ include file='menu.jsp'%>
    </header>
    
    <div class="container mt-4">
        <section id="quienes-somos">
            <div class="row">
                <div class="col-md-6">
                    <h2 style="font-family: 'Arial', sans-serif; font-size: 28px;">Quiénes Somos</h2>
                    <p style="font-family: 'Helvetica', sans-serif; font-size: 18px;">Somos <strong>Amigos Peludos</strong>, una clínica veterinaria dedicada al cuidado y el amor por los animales. Fundada en el año 2023 por el amante de los animales y veterinario apasionado, Juan Camilo Barrientos, nuestra clínica ha estado sirviendo a la comunidad de amantes de las mascotas durante más de una década.</p>
                    <p style="font-family: 'Helvetica', sans-serif; font-size: 18px;">Nuestro compromiso es proporcionar atención médica excepcional para tus amigos de cuatro patas. Desde perros y gatos hasta conejos, aves y pequeñas mascotas exóticas, nuestra experiencia y pasión nos han convertido en un refugio seguro para la salud y el bienestar de tus compañeros peludos.</p>
                    <p style="font-family: 'Helvetica', sans-serif; font-size: 18px;">En Amigo Peludo, creemos en la prevención tanto como en el tratamiento. Nuestro equipo de veterinarios altamente calificados se esfuerza por educar a los dueños de mascotas sobre la importancia de la atención preventiva, las vacunas y una alimentación adecuada para asegurar una vida larga y feliz para tus amigos peludos.</p>
                </div>
                <div class="col-md-6">
                    <img src="/amigopeludo/res/img/nuestroequipo.jpeg" alt="Nuestro Equipo">
                </div>
            </div>
        </section>
    </div>
    
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    <%@ include file='footer.jsp'%>
</body>
</html>


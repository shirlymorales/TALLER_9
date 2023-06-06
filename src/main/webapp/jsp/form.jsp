<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Shirly Morales">
    <meta name="description" content="Crea una cuenta o inicia sesión con nosotros y disfruta de esta gran experiencia con SONGOKU.">
    <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registro .:. SONGOKU</title>
    <link rel="icon" type="image/x-icon" href="../img/descarga.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/styleform.css">
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <img class="mb-4" src="${pageContext.request.contextPath}/img/descarga.png" alt="SONGOKU" width="100">
    <h1><header>FORMULARIO.</header></h1>
    <nav></nav>
    <section>

        <form action="" method="">
            <label class="form-label" for="firstName">Nombres</label>
            <input type="text" class="form-control" id="firstName" name="firstName"
                   placeholder="Ingrese su nombre" required autofocus pattern="[A-za-z ]{2,40}">

            <label class="form-label" for="lastName">Apellidos</label>
            <input type="text" class="form-control" id="lastName" name="lastName"
                   placeholder="Ingrese sus apellidos" required pattern="[A-za-z ]{2,40}">

            <label class="form-label" for="email">Correo</label>
            <input type="email" class="form-control" id="email" name="email"
                   placeholder="Ingrese su correo" required pattern="{,60}">

            <label class="form-label" for="password">Contraseña</label>
            <input type="password" class="form-control" id="Password" name="password"
                   placeholder="Ingrese su contraseña" required pattern="/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}/;">


            <button class="outline btn btn-info">Ingresar</button>
            <button type="submit" class="btn btn-info">Enviar</button>
        </form>
        <br/>
    </section>
    <footer></footer>

        <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados SONGOKU
            <%=displayDate()%>
        </p>

    </form>
</main>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


<%!
    public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>
</div>
</body>
</html>


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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/stylecategory.css">
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <img class="mb-4" src="${pageContext.request.contextPath}/img/descarga.png" alt="SONGOKU" width="100">
    <h1><header>REGISTRAR CATEGORIA.</header></h1>
    <nav></nav>
    <section>
        <form action="" method="">
            <div class="form-floating">
                <input type="text" class="form-control" name="category_name" id="floatingName"
                       placeholder="ingrese nombre de la categoria " required autofocus>
                <label for="floatingName">Nombre:</label>
            </div>

            <button class="w-100 btn btn-lg btn-primary" type="submit">Registrar</button>
            <div class="centerD">
            </div>
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


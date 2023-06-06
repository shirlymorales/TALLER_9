<%--
  Created by IntelliJ IDEA.
  User: APRENDIZ
  Date: 6/06/2023
  Time: 2:33 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
        <img class="mb-4" src="${pageContext.request.contextPath}/img/descarga.png" alt="SONGOKU" width="100">
        <h4 class="text-secondary">SONGOKU</h4>
        <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInput"
                   placeholder="Ingrese su nombre de usuario" required autofocus
                   pattern="[A-za-z]{8,12}">
            <label for="floatingInput">Usuario:</label>
        </div>

        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword"
                   placeholder="Ingrese su contraseña" required
                   pattern="[A-za-z0-9]{8,12}">
            <label for="floatingPassword">Contraseña:</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>


        <div id="register">
            <a href="registro">Registrarse</a>

        </div>

        <jsp:include page="/jsp/Templates/footer.jsp"/>
    </form>
</main>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</div>

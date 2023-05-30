<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>

    <!--MetaData-->
    <!--Charset para caracteres especiales-->
    <meta charset="UTF-8">
    <!--Author-->
    <meta name="author" content="Nombre Autor">
    <!--Descripción-->
    <meta name="description" content="Esta es la información que aparece en el párrafo que acompaña los resultados de una búsqueda en internet.">
    <!--Keywords-->
    <meta name="keywords" content="Registro de usuario, formulario de registro, crear cuenta, registro en línea">
    <!--minimum responsive viewport-->
    <meta name="viewport" content="width=device=width, initial-scale=1">

    <!--TITLE-->

    <title>Login - MacBook</title>

    <!--FAVICON-->
    <link rel="icon" type="image/x-icon" href="img/MAC.jpg">

    <!--CSS-->
    <!--Bootstrap css / icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!--Custom CSS-->
    <link rel="stylesheet" href="css/sign_in.css">
    <link rel="stylesheet" href="css/styles.css">

</head>
<body class="text-center">

<header></header>

<!--Form Login-->
<main class="form-signin w-100 m-auto">
    <form action="registerUser" method="POST">
        <img class="mb-4" src="img/MAC.jpg" alt="MacBook" width="100">
        <h4 class="text-secondary">Mi MacBook</h4>
        <h1 class="h5 mb-3 fw-normal">Ingreso</h1>


        <div class="form-floating">
            <input type="text" class="form-control" name="user_firstname" id="floatingInputName"
                   placeholder="Ingrese su nombre" required
                   pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}">
            <label for="floatingInputName">Nombre</label>
        </div>

        <div class="form-floating">
            <input type="text" class="form-control" name="user_lastname" id="floatingInputLastname"
                   placeholder="Ingrese su apellido" required
                   pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}">
            <label for="floatingInputLastname">Apellido</label>
        </div>

        <div class="form-floating">
            <input type="text" class="form-control" name="user_email" id="floatingInputEmail"
                   placeholder="Ingrese su coreo electrónico" required
                   pattern="^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$">
            <label for="floatingInputEmail">Correo Electrónico</label>
        </div>


        <div class="form-floating">
            <input type="password" class="form-control" name="user_password" id="floatingPassword"
                   placeholder="Ingrese su contraseña" required pattern="[A-Za-z0-9]{8,12}">
            <label for="floatingPassword">Contraseña</label>
        </div>

        <button class="w-100 btn btn-primary" type="submit">Registrar</button>

        <div id="register">
            <a href="index.jsp">Ingresar</a>
            <br>
            <a href="category.jsp">Register Categories</a>
            <br>
            <a href="product.jsp">Register Products</a>
        </div>

        <p class="mt-3 mb-3 text-muted">Todos los derechos reservados MacBook
            &copy; <%=displayDate()%>
        </p>

    </form>
</main>

<!--Bootstrap Script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
</script>

<%!
    public String displayDate(){
        SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>

</body>
</html>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Name Author">
    <meta name="keywords" content="Registro de productos en línea">
    <meta name="viewport" content="width=device=width, initial-scale=1">

    <title>Products</title>

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

<!--Form Category-->
<main class="form-signin w-100 m-auto">
    <form action="registerProduct" method="POST">
        <img class="mb-4" src="img/MAC.jpg" alt="MacBook" width="100">
        <h4 class="text-secondary">Mi MacBook</h4>
        <h1 class="h5 mb-3 fw-normal">Register Products</h1>

        <div class="form-floating">
            <input type="text" class="form-control" name="product_name" id="floatingInputNamePro"
                   placeholder="Ingrese nombre para el producto" required
                   pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}">
            <label for="floatingInputNamePro">Producto</label>
        </div>

        <div class="form-floating">
            <input type="number" class="form-control" name="product_value" id="floatingInputValueP"
                   placeholder="Ingrese el precio para el producto" required
                   pattern="^[0-9]+([.][0-9]+)?$">
            <label for="floatingInputValueP">Precio</label>
        </div>

        <div class="form-floating">
            <input type="text" class="form-control" name="category_id" id="floatingInputCateId"
                   placeholder="Ingrese id de la categoría para registrar el nuevo producto" required
                   pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}">
            <label for="floatingInputCateId">Id Categoría</label>
        </div>


        <button class="w-100 btn btn-primary" type="submit">Registrar</button>

        <div id="register">
            <a href="signup.jsp">Go Back</a>
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
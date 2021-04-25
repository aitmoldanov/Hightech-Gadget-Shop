<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/navbar.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<header></header>
<body class="text-center">
<main class="form-signin">
    <form action="LoginServlet" method="post">
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
        <label for="inputEmail" class="visually-hidden">Email address</label>
        <input type="text" id="inputEmail" class="form-control" name="username" placeholder="Username" required autofocus>
        <label for="inputPassword" class="visually-hidden">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <button class="w-100 btn btn-lg btn-warning" type="submit" value="login">Sign in</button>
    </form>
</main>

</body>
</html>

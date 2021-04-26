<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/navbar.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body class="text-center">
<main class="form-signin">
    <form action="SignUpServlet" method="post">
        <h1 class="h3 mb-3 fw-normal">Please sign up</h1>
        <label for="inputEmail" class="visually-hidden">Name</label>
        <input type="text" id="inputEmail" class="  form-control" name="username" placeholder="Name" required autofocus><br>
        <label for="Email" class="visually-hidden">Email</label>
        <input type="text" id="Email" class="  form-control" name="email" placeholder="Email" required><br>
        <label for="inputPassword" class="visually-hidden">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <label for="inputPassword" class="visually-hidden">Confirm password</label>
        <input type="password"  class="form-control" name="password2" placeholder="Confirm password" required>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit" value="register">Sign in</button>
    </form>
</main>

</body>
<%@ include file="/footer.jsp" %>
</html>

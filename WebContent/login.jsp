
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Login</title>

</head>
<body>
	<form method="post" action="home.jsp">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputUser" class="sr-only">User Name</label>
        <input type="text" class="form-control" placeholder="User name" required autofocus value=""
               name="userName">
        <br>

        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password"class="form-control" placeholder="Password" required autofocus
               value="" name="password" style="margin-top: 10px">
        <br>
        <input type="checkbox" name="register" style="margin-top: 5px;">
        <jsp:text>Register</jsp:text>

        <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 5px">Sign in</button>
     </form>
</body>
</html>

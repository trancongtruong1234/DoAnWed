<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/register.css">
<script type="text/javascript" src= "js/register.js"></script>

</head>
<body>

        <div class="center">
            <div class="header">Register</div>
            <form action ="RegisterController" class="Menu" id ="Menu" method="post" onsubmit="return validateform()">
                <p style="color:red; text-align: center" id ="err"></p>
                <p><input type="text" placeholder="User name" size="50" minlength="5" maxlength="50" id="username" class ="username" name ="username"></p>
                <p><input type="email" placeholder="E-mail" size="50" minlength="5" maxlength="50" id="email" class ="email" name ="email"></p>
                <p><input type="password" placeholder="Password" size="50" min="8" maxlength="30" id="password" class ="password" name ="password"></p>
                <p><input type="password" placeholder="Re Password" min="8" maxlength="30" id="repassword" class ="repassword" name ="repassword"></p>
                <p><input type="submit" value="Register" id="btnRegister"></p>
                <p><a href="login.jsp">Click here to Login</a></p>
            </form>
        </div>
</body>
</html>
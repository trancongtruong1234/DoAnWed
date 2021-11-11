<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/register.css">
<script>
	function validateform(){
		var username = document.forms["Menu"]["username"].value;
		var email = document.forms["Menu"]["email"].value;
		var password = document.forms["Menu"]["password"].value;
		var repassword = document.forms["Menu"]["repassword"].value;
		var err = document.getElementById("err");
		var mess = "";
		//Kiểm tra thông tin
		if(username=="" || email =="" || password =="" || repassword ==""){
			mess = "Vui long nhap day du thong tin";
			err.innerHTML= mess;
			return false;
		}
}
</script>

</head>
<body>

        <div class="center">
            <div class="header">Register</div>
            <form action ="home.jsp" class="Menu" id ="Menu" method="post" onsubmit="return validateform()">
                <p style="color:red; text-align: center" id ="err"></p>
                <p><input type="text" placeholder="User name" size="50" minlength="5" maxlength="50" id="username"></p>
                <p><input type="email" placeholder="E-mail" size="50" minlength="5" maxlength="50" id="email"></p>
                <p><input type="password" placeholder="Password" size="50" min="8" maxlength="30" id="password"></p>
                <p><input type="password" placeholder="Re Password" min="8" maxlength="30" id="repassword"></p>
                <p><input type="submit" value="Register" id="btnRegister"></p>
                <p><a href="Register.html">Click here to Login</a></p>
            </form>
        </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
</style>
<script type="text/javascript">
function hamDropdown() {
	 document.querySelector(".noidung_dropdown").classList.toggle("hienThi");
	}
</script>
</head>
<body>
CMS
<div class="dropdown">
 	
	 	 <span> 
	 	 	<i class="fa fa-user"  style="color: #23527c"></i> 
	 	 	&nbsp; 
	 	 	<i class="fa fa-caret-down" style="color: #23527c"></i>
	 	 </span>
	  <div class="dropdown-content">	
		  <p><i class="fa fa-user"> &nbsp; </i>User Profile</p>
		  <p><i class="fa fa-sign-in "> &nbsp;</i>Logout </p>
	  </div>
	</div>
</body>
</html>
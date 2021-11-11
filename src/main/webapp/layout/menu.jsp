<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
<div id ="menu">
 	<div id="search-container">
    	<form action="">
      		<input type="text" placeholder="Seach..." class ="txtSearch">
      		<button type="submit"><i class="fa fa-search" style="color: #696665"></i></button>
    	</form>
  	</div>
		<div id = "list">
			<ul>
				<li><a href ="viewContent.tiles"><i class="fa fa-table" style="color: #528FC7"></i> &nbsp;View contents</a>
				<li><a href ="formContent.tiles"><i class="fa fa-edit" style="color: #528FC7"></i>&nbsp;Form contents</a></li>
			</ul>
		</div>
</div>
</body>
</html>
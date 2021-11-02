<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<%@include file="menuStyle.css" %>
</style>
<body>
  <div class="search-container">
    <form action="">
      <input type="text" placeholder="Seach..." name="search">
      <button type="submit">Submit</button>
    </form>
  </div>
<ul class = "menu">
<li><a href ="viewContent.tiles">View contents</a></li>
<li><a href ="formContent.tiles">Form contents</a></li>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><tiles:getAsString name="title"/></title>
<link rel="stylesheet" href="layout/homeStyle.css">

</head>
<body>
<div class = "navigition">
	<tiles:insertAttribute name="navigation" />
</div>
<div class = "row">
<aside>
	<tiles:insertAttribute name="menu" />
</aside>
<section>
		<tiles:insertAttribute name="body" />
</section>
</div>
</body>
</html>
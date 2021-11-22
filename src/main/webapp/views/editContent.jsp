<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/editContent.css">
<meta charset="UTF-8">
<title>EditContent</title>
</head>
<body>
	<div class="edit-content">
		<h1 class="text-edit-content">Edit Content</h1>
		<hr>
		<form class="viewall" action="EditContentController?id=${id}"
			method="post">
			<%-- <c:out value="${id}" /> --%>
			<br />

			<p class="title">Content Form Elements</p>

			<div class="row-form">
				<label for="title">Title</label> <input maxlength="50" type="text"
					class="textbox" id="title" name="title" value="${st.title}">
			</div>
			<div class="row-form">
				<label for="brief">Brief</label>
				<textarea name="brief" id="brief" rows="3" class="textbox">${st.brief}</textarea>
			</div>
			<div class="row-form">
				<label for="content">Content</label>
				<textarea name="content" id="content" rows="8" class="textbox">${st.content}</textarea>
			</div>
			<%-- <c:set var="i" scope="session" value="${1}" /> --%>
			<div class="row-form">
				<input type="submit" class="button" value="Submit Button"> <input
					type="reset" class="button" value="Reset Button">
			</div>
			<!-- <script>
			function msg()
			{
				location.reload();
			}
			</script> -->
		</form>
	</div>
</body>
</html>
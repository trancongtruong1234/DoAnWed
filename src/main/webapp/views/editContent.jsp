<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel ="stylesheet" href="style/editContent.css">
</head>
<body>
<div class="add-content">
	<h1 class="text-add-content">Edit Content</h1>
	<hr>
	<form class="EditContentController" method="post" >
		<p class="title">Content Form Elements</p>
		<div class="row-form">
			<label for="title">Title</label> <input type="text" class="textbox"
				id="title" name="Title" value="${st.title}">
		</div>
		<div class="row-form">
			<label for="brief">Brief</label>
			<textarea name="Brief" id="brief" rows="3" class="textbox">${st.brief}</textarea>
		</div>
		<div class="row-form">
			<label for="content">Content</label>
			<textarea name="Content" id="content" rows="8" class="textbox">${st.content}</textarea>
		</div>
		<div class="row-form">
			<input type="submit" class="button" value="Submit Button"> <!-- <input
				type="submit" class="button" value="Reset Button"> -->
		</div>
	</form>
</div>
</body>
</html>
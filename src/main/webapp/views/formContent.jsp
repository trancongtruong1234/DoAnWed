<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style/formContentCSS.css">
<script language="javascript" src="js/formContent.js"></script>
</head>
<body>
	<div class="formContent">
		<h1>Add Content</h1>
		<hr>
		<form id="form">
			<table id="tableformcontent">
				<tr>
					<td class="content">Content Form Elements</td>
				</tr>
				<tr>
					<td><label>Title</label> <br> 
					<input minlength="10" maxlength="200" id="title" placeholder="Enter the title" required><br><br>
					<label>Brief</label>
					<br> <textarea name="brief" id="brief" cols="30" rows="10"  maxlength="150" minlength="30" required></textarea> 
					<br><br>
					<label>Content</label>
					<br> 
					<textarea name="content" id="content" cols="30" rows="10" maxlength="1000" minlength="50" required></textarea> <br><br>
					<input onclick="check()" class="submit" type="button" value="Submit Button"> 
					<input onclick="resetButton()" class="submit" type="button" value="Reset Button"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
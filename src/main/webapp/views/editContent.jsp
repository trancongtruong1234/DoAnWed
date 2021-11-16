<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
hr {
    width: 95%;
}
.add-content{
   position : fixed;
   width:80%;
    
}
.add-content .text-add-content{
    margin-left: 2.5%;   
}
.add-content .form-add-content{
    margin: 16px 32px;
    border: 1px solid rgb(221, 221, 221);
}
.add-content .title{
    margin-top:0;
    padding: 12px 16px ;
    border-bottom: 1px solid rgb(221, 221, 221);
    background-color: rgb(245, 245, 245);
}
.add-content .row-form{
    padding: 12px 16px;
}
.add-content label{
    display: block;
    font-weight: 550 ;
    margin-bottom: 8px;
}
.add-content .textbox{
    width: 75%;
    min-height: 32px;
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    padding: 4px 12px;
    
}
.add-content .button{
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    background-color: white;
    padding: 8px 16px;
    margin-top: -8px;
    cursor: pointer;
}

</style>
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
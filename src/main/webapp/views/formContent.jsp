<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="views/formContentCSS.css">
</head>
<body>
  <h1>Add Content</h1>
  <hr>
  <table>
        <tr>
            <td class="content">
                Content Form Elements
            </td>
        </tr>
        <tr>
            <td>
                <label>Title</label> <br>
                <input><br>
                <label>Brief</label> <br>
                <textarea name="brief" id="" cols="30" rows="6" required maxlength="150"></textarea> <br>
                <label>Content</label> <br>
                <textarea name="content" id="" cols="30" rows="6" required maxlength="1000"></textarea> <br>
                <input class="submit" type="submit" value="Submit Button">
                <input class="submit" type="submit" value="Reset Button">
            </td>
        </tr>
  </table>
</body>
</html>
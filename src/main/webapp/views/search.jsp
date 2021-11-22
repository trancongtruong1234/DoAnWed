<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel ="stylesheet" href="style/search.css">
<title>Search</title>
<style>

</style>
</head>
<body>
	<div class="view-body">
		<div class="title">
			<h1>Search Content</h1>
		</div>
		<hr>
		<fieldset class="view">
			<div class="list">Search Content</div>
		</fieldset>
		<fieldset class="field">
			<div class="form">
				<table class="view-content" border="1">
					<thead>
						<tr>
							<th>#</th>
							<th>Title</th>
							<th>Brief</th>
							<th>Created Date</th>
						</tr>
					</thead>

					<c:forEach var="row" items="${listSearch}">
						<tbody>
							<tr>
								<td><c:out value="${row.id}" /></td>
								<td><c:out value="${row.title}" /></td>
								<td><c:out value="${row.brief}" /></td>
								<td><c:out value="${row.createDate}" /></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</fieldset>
	</div>
</body>
</html>
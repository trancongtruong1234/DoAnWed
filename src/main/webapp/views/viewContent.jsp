<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
hr {
	width: 95%;
}

.view-body .title {
	margin-left: 2.5%;
}

.field {
	margin: 0 2.5% 0 2.5%;
	border: 2px solid #DDDDDD;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	border-top-width: 2px;
}

.form {
	margin-top: 10px;
}

.view-body {
	display: block;
}

.view-body .view {
	margin: 0 2.5% 0 2.5%;
	margin-top: 20px;
	border: 2px solid #DDDDDD;
	background-color: #f5f5f5;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-width: 0px;
}

.form table {
	border-collapse: collapse;
	border: 2px solid #DDDDDD;
	width: 100%;
}

.field table tr {
	text-align: left;
}

.field table th, td {
	padding: 7px;
	border: 2px solid #DDDDDD;
}

.view .list {
	padding-top: 5px;
}

table tbody tr:nth-child(odd) {
	background-color: #f9f9f9;
}

table tbody tr:nth-child(even) {
	background-color: white;
}

table tbody tr:nth-child(1) {
	background-color: #f9f9f9;
}

table tbody {
	word-break: break-word;
}
</style>
<script>
	function showMess(id){
		var option = confirm ('Ban có muon xoa hay k');
			if (option === true){
			window.location.href = 'DeleteContent?id='+id;
			}
		}
</script>
</head>
<body>
	<div class="view-body">
		<div class="title">
			<h1>View Content</h1>
		</div>
		<hr>
		<fieldset class="view">
			<div class="list">View Content List</div>
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
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" scope="session" value="${1}" />
						<c:forEach items="${listp}" var="o">
							<tr>
								<td><c:out value="${i}" /></td>

								<td><c:out value="${o.title}" /></td>
								<td><c:out value="${o.brief}" /></td>
								<td><c:out value="${o.createDate}" /></td>
								<td><a href="EditController?id=${o.id}">Edit</a>&ensp; <a
									href="#" onclick ="showMess(${o.id})">Delete</a></td>
								<c:set var="i" scope="session" value="${i+1}" />
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</fieldset>
	</div>
</body>
</html>
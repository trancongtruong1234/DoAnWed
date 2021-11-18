<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="style/viewContent.css">
<script type="text/javascript" src= "js/viewContent.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
			$(function() {
				$('.preloading').fadeIn('slow', function() {
					$(".load").delay(5000).fadeOut('slow');
				});
			});
		</script>
<style>
.load {
	width: 100%;
	height: 100%;
	background: #fff;
	z-index: 1000;
	position: absolute;
	display: block;
	overflow: hidden;
}

.nd {
	margin-top: 2.5%;
	margin-left: 5%;
	font-size: 40px;
}

.preloading {
	overflow: hidden;
}
</style>
</head>
<body>
	<div class="preloading"> 
		<div class="load"> 
			<div class="nd">Loading</div>
		</div>
	</div>
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
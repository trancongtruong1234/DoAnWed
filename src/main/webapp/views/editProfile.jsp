<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
.btn {
	height: 40px;
}

#email {
	border: none;
}

.form-control {
	margin-top: 8px;
	border: 2px solid #DDDDDD;
	width: 95%;
	height: 30px;
}

.text-area {
	margin-top: 8px;
	border: 2px solid #DDDDDD;
	width: 95%;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-weight: bold;
}

th.title {
	font-weight: normal;
}



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

.view .list {
	padding-top: 5px;
}
</style>
</head>

<body>
	<div class="view-body">
		<div class="title">
			<h1>Edit Profile</h1>
		</div>
		<hr>
		<fieldset class="view">
			<div class="list">Profile Form Elements</div>
		</fieldset>
		<fieldset class="field">
			<form action="EditProfileController?id=${sessionScope.theLastUser.id}" method="post">
				<div class="form-group">
					<label class="control-label" for="fname">First name</label>
					<div class="text">
						<input class="form-control" type="text" name="fname" id="fname" maxlength="30"
							placeholder="Enter the first name" value="${detail.firstName }" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Last name</label>
					<div>
						<input class="form-control" type="text" name="lname" id="lname" maxlength="30"
							placeholder="Enter the last name" value="${detail.lastName }" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Email</label>
					<div>
						<input readonly class="form-control" type="text" name="email"
							id="email" value="${sessionScope.theLastUser.email }" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Phone</label>
					<div>
						<input class="form-control" type="text" name="phone" id="phone" maxlength="13"
							placeholder="Enter your phone number" value="${detail.phone }" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Description</label>
					<div>
						<textarea class="text-area" name="description" id="description" maxlength="200"
							rows="5" >${detail.description }</textarea>
					</div>
				</div>

				<div class="form-group">
					<div>
						<button type="submit" class="btn ">Submit Button</button>
						<button type="reset" class="btn ">Reset Button</button>
					</div>
				</div>
			</form>
		</fieldset>
	</div>
</body>

</html>
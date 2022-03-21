<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1"
	charset="ISO-8859-1">
<style>
body {
	font-family: calibri;
	background-color: #e6ffec;
}
input,button,select{
	border-radius: 5px;
	border: 1px solid #4CAF50 !important;
}
.container {
	width: 700px;
}

input[type=text], input[type=password], textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #cbffc7;
	outline: none;
}

div {
	padding: 10px 0;
}

hr {
	border: 1px solid #4CAF50;
	margin-bottom: 25px;
}

.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin-left: 180px;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>
<%@include file="header.html" %>
	<div style="margin-left: 300px;">
		<form action="insert_register.jsp" method="post">
			<div class="container">
				<center>
					<h1 style="font-size: 50px;">USER - REGISTER</h1>
				</center>
				<hr>
				<label> <b>Firstname</b>
				</label> <input type="text" name="firstname" placeholder="Firstname"
					size="15" required> <label> <b>Middlename</b>
				</label> <input type="text" name="middlename" placeholder="Middlename"
					size="15" required> <label> <b>Lastname</b>
				</label> <input type="text" name="lastname" placeholder="Lastname" size="15"
					required> <label> <b>Phone</b>
				</label> <input type="text" name="phone" placeholder="Enter Phone no."
					size="10" required> <label for="email"><b>Email</b></label>
				<input type="text" placeholder="Enter Email" name="email" required>
				<label for="email"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required> <label
					for="psw-repeat"><b>Re-type Password</b></label> <input
					type="password" placeholder="Retype Password" name="re_password"
					required>
				<button type="submit" class="registerbtn">Register</button>
		</form>
	</div>
</body>
</html>
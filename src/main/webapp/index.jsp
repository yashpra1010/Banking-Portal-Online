<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp" session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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

.loginbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin-left: 180px;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

.loginbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>

<%@include file="header.html" %>
	<div style="margin-left: 300px;">
		<form action="validate.jsp" method="post">
			<div class="container">
				<center>
					<h1 style="font-size: 50px;">USER - LOGIN</h1>
				</center>
				<hr>
				<label for="email"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="psw" required>
				<button type="submit" class="loginbtn">Login</button>
				<center><br>Don't have account? <a href="register.jsp">Sign up</a></center>
			</div>
		</form>
</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
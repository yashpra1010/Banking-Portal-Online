<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw</title>
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

input[type=text], input[type=password], input[type=number], textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus {
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
	margin-left: 50px;
	border: none;
	cursor: pointer;
	width: 300px;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}
.btn{
	border-radius: 5px;
	border: 1px solid #4CAF50 !important;
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 300px;
	opacity: 0.9;
}
.btn:hover{
	opacity: 1;
}
</style>
</head>
<body>
<div style="margin-left: 300px;">
		<form action="withtrans.jsp" method="post">
			<div class="container">
				<center>
					<h1 style="font-size: 50px;">- WITHDRAWAL -</h1>
				</center>
				<hr>
				<label> <b>Username</b>
				</label> <input type="text" name="username" placeholder="Enter Username" required> 
                <label> 
                    <b>Password</b>
				</label> 
                <input type="password" name="password" placeholder="Enter Password" required> 
                <label> 
                    <b>Amount Withdraw</b><br>
				</label> 
                <input type="number" name="withdraw" placeholder="Amount Withdraw" required> 
				<button type="submit" class="registerbtn">Withdraw</button>
				<button class="btn" onclick="history.back()">Go Back</button>
		</form>
	</div>
</body>
</html>
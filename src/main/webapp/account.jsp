<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp" session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Bank-Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1"
	charset="ISO-8859-1">
<style>
body {
	font-family: calibri;
	background-color: #e6ffec;
}

.container {
	width: 700px;
}

input, button, select, textarea {
	border-radius: 5px;
	border: 1px solid #4CAF50 !important;
}

input[type=text], input[type=password], textarea {
	width: 700px;
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
	margin-left: 110px;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

select {
	width: 200px;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.registerbtn:hover {
	opacity: 1;
}
</style>
</head>
<body>

	<div style="margin-left: 300px;">
		<form action="insert_bankregis.jsp" method="post">
			<div class="container">
				<center>
					<h1 style="font-size: 50px;">BANK ACCOUNT REGISTRATION</h1>
				</center>
				<hr>
				<label> <b>Username</b>
				</label> <input type="text" name="username" placeholder="Username" size="15"
					required> <label for="email"><b>Email</b></label> <input
					type="text" placeholder="Enter Email" name="email" required>
				<label> <b>Account Type</b>&nbsp;&nbsp;
				</label> <select name="acc_type">
					<option>Choose Account Type</option>
					<option value="SavingsAcc">Savings Account</option>
					<option value="CorporateAcc">Corporate Account</option>
					<option value="CurrentAcc">Current Account</option>
					<option value="SalaryAcc">Salary Account</option>
				</select> <label for="aadhar"><br><b>Aadhar Card Number</b></label> <input
					type="text" placeholder="Enter Aadhar Card Number" name="aadharno"
					required> <label for="pancard"><b>PAN Card
						Number</b></label> <input type="text" placeholder="Enter PAN Card Number"
					name="panno" required> <label> <b>Gender</b>
				</label><br> <input type="radio" value="Male" name="gender" checked>
				Male <input type="radio" value="Female" name="gender">
				Female <input type="radio" value="Other" name="gender">
				Other

			</div>
			<b>Current Address</b> <br>
			<textarea cols="80" rows="5" placeholder="Current Address"
				value="address" name="address" required>  
</textarea>
			<br> <label for="psw"><b>Password</b></label> <br> <input
				type="password" placeholder="Enter Password" name="password" required>
			<label for="psw-repeat"><br> <b>Re-type Password</b></label> <br>
			<input type="password" placeholder="Retype Password"
				name="re_password" required>

			<button type="submit" class="registerbtn">Register</button>
		</form>
	</div>
</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="jakarta.servlet.http.*"%>
<%@page import="jakarta.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" errorPage="Error.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
body {
	font-family: calibri;
	background-color: #e6ffec;
}

.name {
	font-size: 50px;
	text-align: center;
}

.btn {
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

.btn:hover {
	opacity: 1;
}

.lgt {
	margin-left: 1000px !important;
	margin-top: -210px !important;
}

.wthdw {
	margin-left: 1000px !important;
	margin-top: -90px !important;
}

.dpst {
	margin-left: 1000px !important;
	margin-top: -100px !important;
}

.statement_tb {
	font-size: 25px !important;
	margin-left: 200px;
	margin-top: -200px;
	border-radius: 5px;
}

th, td {
	text-align: left;
	padding: 8px;
	border-radius: 5px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #04AA6D;
	color: white;
}
.cul{
	font-size:30px !important;
	position: fixed;
  	top: 25px;
  	left: 0;
  	width: 500px;
}
</style>
</head>
<body>

	<div class="name">
		<%
		int curr_bal = 0;
		String url = "jdbc:mysql://localhost:3306/prac12";
		String db_user = "root";
		String db_pass = "";
		Connection con = DriverManager.getConnection(url, db_user, db_pass);

		//getting username from session
		String user_session = (String) session.getAttribute("username");

		//SQL Queries
		String selectQ = "SELECT * FROM prac12.statement order by srno desc;";

		Statement stmt = con.createStatement();

		out.println("Hello " + user_session + "<hr>");
		
		out.println("<div class=\"lgt\"><b><h1><button id=\"logout\"class=\"btn\">Logout</button></h1></b></div>");
		out.println("<div class=\"wthdw\"><b><h1><button id=\"withdraw\"class=\"btn\">Withdraw</button></h1></b></div>");
		out.println("<div class=\"dpst\"><b><h1><button id=\"deposit\"class=\"btn\">Deposit</button></h1></b></div>");
		//creating table

		out.println("<table class=\"statement_tb\">");
		out.println("<tr>");
		out.println("<th>Date</th>");
		out.println("<th>Username</th>");
		out.println("<th>Withdraw</th>");
		out.println("<th>Deposit</th>");
		out.println("<th>Balance</th>");
		out.println("</tr>");

		//ResultSet Object
		ResultSet rs = stmt.executeQuery(selectQ);
		int counter = 0;
		while (rs.next()) {
			if (rs.getString(2).equals(user_session)) {
				counter=counter+1;
				if (counter == 1) {
					curr_bal = rs.getInt(6);
				}
				
				out.println("<tr>");
				out.println("<td>" + rs.getString(3) + "</td>");
				out.println("<td>" + rs.getString(2) + "</td>");
				out.println("<td>" + rs.getInt(4) + "</td>");
				out.println("<td>" + rs.getInt(5) + "</td>");
				out.println("<td>" + rs.getInt(6) + "</td>");
				out.println("</tr>");
			}
		}
		out.println("</table>");
		//out.println("<div class=\"cul\">Current Balance: <mark>$"+curr_bal+"</mark></div>");
		%></div>
		
				<div class="cul">Current Balance: <mark>$<%=curr_bal%></mark></div>
	<script type="text/javascript">
		document.getElementById("logout").onclick = function() {
			if (confirm("Do you want to logout?")) {
				location.href = "logout.jsp";
			}
		};
		document.getElementById("withdraw").onclick = function() {
			location.href = "withdraw.jsp";
		};
		document.getElementById("deposit").onclick = function() {
			location.href = "deposit.jsp";
		};
	</script>


</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
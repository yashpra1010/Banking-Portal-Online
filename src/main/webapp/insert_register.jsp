<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="jakarta.servlet.http.*" %>
<%@page import="jakarta.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Sign-Up</title>
<style>
body {
	font-family: calibri;
	background-color: #e6ffec;
}
.btn{
	border-radius: 5px;
	border: 1px solid #4CAF50 !important;
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin-left: 530px;
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
<%
		String url="jdbc:mysql://localhost:3306/prac12";
		String db_user="root";
		String db_pass="";
		Connection con = DriverManager.getConnection(url,db_user,db_pass);
		
		String fname = request.getParameter("firstname");
		String mname = request.getParameter("middlename");
		String lname = request.getParameter("lastname");
		String phn = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		
		String query="INSERT INTO `signup` (`firstname`, `middlename`, `lastname`, `phone`, `email`, `username`, `password`) VALUES (?,?,?,?,?,?,?);";
		
		PreparedStatement ps = con.prepareStatement(query);
		
		if(re_password.equals(password)){
			ps.setString(1,fname);
			ps.setString(2,mname);
			ps.setString(3,lname);
			ps.setString(4,phn);
			ps.setString(5,email);
			ps.setString(6,username);
			ps.setString(7,password);
			
			ps.executeUpdate();
			
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else{
			out.println("<center><b><h1>Please enter same password.</h1></b></center>");
			out.println("<b><h1><button class=\"btn\" onclick=\"history.back()\">Go Back</button></h1></b>");
			
		}
		
	%>
</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
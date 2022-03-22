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
<title>Bank Registration</title>
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
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String acc_type = request.getParameter("acc_type");
		String aadharno = request.getParameter("aadharno");
		String panno = request.getParameter("panno");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		
		out.print("Username: "+username);
		out.print("Password: "+password);
		
		int flag=0;
		//username,email,password,re_password
		String selectQ="SELECT username,password FROM `signup`";
		String InsertQ="INSERT INTO `prac12`.`bankreg` (`username`, `email`, `acc_type`, `aadhar`, `pan`, `gender`, `address`, `password`) VALUES (?,?,?,?,?,?,?,?);";
		
		Statement stmt = con.createStatement();
		PreparedStatement inQ = con.prepareStatement(InsertQ);
		
		ResultSet rs = stmt.executeQuery(selectQ);
		if(re_password.equals(password)){
		while(rs.next()){
			
			if(username.equals(rs.getString(1)) && password.equals(rs.getString(2))){
				
				inQ.setString(1,username);
				inQ.setString(2,email);
				inQ.setString(3,acc_type);
				inQ.setString(4,aadharno);
				inQ.setString(5,panno);
				inQ.setString(6,gender);
				inQ.setString(7,address);
				inQ.setString(8,password);
				
				inQ.executeUpdate();
				session.setAttribute("username", username);
				response.sendRedirect("dashboard.jsp");
				
				flag=1;
			}
			else{
				flag=0;
			}
		}
		
		
		if(flag==0){
			out.println("<div style=\"margin-top: -1000px; color:red; text-align:center;\"><b><h1>You don't have account please sign-up.</h1></b></div>");
			getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
		}
	}/*
		else{
			getServletContext().getRequestDispatcher("/dashboard.jsp").forward(request, response);
		}*/
		
	%>
</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
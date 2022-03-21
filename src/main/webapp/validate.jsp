<%@page import="java.net.URLDecoder"%>
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
<title>Validate-signup</title>
</head>
<body>
	<%
		String url="jdbc:mysql://localhost:3306/prac12";
		String db_user="root";
		String db_pass="";
		Connection con = DriverManager.getConnection(url,db_user,db_pass);
		
		String username = request.getParameter("username");
		String password = request.getParameter("psw");
		
		int flag=0;
		
		String query="select username,password from `signup`";		
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		ResultSet rs = stmt.executeQuery(query);
		
		while(rs.next()) {
			
			if(rs.getString(1).equals(username) && rs.getString(2).equals(password)) 
			{
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				
				response.sendRedirect("validate2.jsp");
				flag=1;
				break;
			}
			else{
				flag=0;
			}
		}
		
		if(flag==0){
			out.println("<div style=\"margin-top: -1000px; color:red; text-align:center;\"><b><h1>You don't have account please sign-up.</h1></b></div>");
			getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
		}
		
		flag=1;
		
	%>
</body>
</html>
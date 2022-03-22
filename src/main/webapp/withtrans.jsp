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
<title>Transcation</title>
<style>
.btn{
	border-radius: 5px;
	border: 1px solid #4CAF50 !important;
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin-left:550px;
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
//JDBC-connection
	String url="jdbc:mysql://localhost:3306/prac12";
	String db_user="root";
	String db_pass="";
	Connection con = DriverManager.getConnection(url,db_user,db_pass);
	
    //getting user & pass from session
	String user_session = (String) session.getAttribute("username");
	String pass_session = (String) session.getAttribute("password");
	
	//values from form(withdraw.jsp or deposit.jsp)
	int with = Integer.parseInt(request.getParameter("withdraw"));
	String user_f = request.getParameter("username");
	String pass_f = request.getParameter("password");
	
	//SQL Queries
	String selectQ = "select username,balance from `prac12`.`transaction`";
	String UpdateQ = "UPDATE `transaction` SET withdraw = ?, balance = ?, deposit=0 WHERE username=?;";
	
	PreparedStatement inQ = con.prepareStatement(UpdateQ);
	Statement stmt = con.createStatement();
	
	//ResultSet Object
	ResultSet rs = stmt.executeQuery(selectQ);
	
	if(user_f.equals(user_session) && pass_f.equals(pass_session)){
		while(rs.next()){
			if(rs.getString(1).equals(user_session)){
				int old_bal = rs.getInt(2);	
				int new_bal = old_bal - with;

				inQ.setInt(1,with);
				inQ.setInt(2,new_bal);
				inQ.setString(3,user_f);			
		
				inQ.executeUpdate();
				break;
			}
		}
	}
	response.sendRedirect("dashboard.jsp");
	//request.getRequestDispatcher("dashboard.jsp").forward(request,response);
%>
<div class="lgt"><b><h1><button id="logout"class="btn">Logout</button></h1></b></div>
<script type="text/javascript">
		document.getElementById("logout").onclick = function () {
		if (confirm("Do you want to logout?")) {
			location.href = "logout.jsp";
		  }
		};
</script>
</body>
</html>
<!--This project is made by Yash Prajapati (github/@yashpra1010)-->
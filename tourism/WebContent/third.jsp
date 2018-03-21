<%@page import="p1.DBconfig, java.sql.* "%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%   String user =  request.getParameter("username") ;
    String pass = request.getParameter("pass");
    Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
  ResultSet rs= st.executeQuery("select * from register where username='"+user+"' and password='"+pass+"'");
  if (rs.next())
 {
	
 %>
 <%response.sendRedirect("touristlogin/index.jsp"); %>
 <%}else { %>
 <h1 align="center">invalid or not registered</h1>
<p align="center">get back to home page and register first as a tourist</p>
<%} %> 
</body>
</html>
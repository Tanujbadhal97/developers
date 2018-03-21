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
 <%  String name =  request.getParameter("Name") ;
 String email = request.getParameter("Email");
 String phone =  request.getParameter("Phone") ;
 String message =  request.getParameter("Message");
    Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
  
 int rs=st.executeUpdate("insert into contact values ('"+name+"','"+email+"','"+phone+"','"+message+"')");
  
 response.sendRedirect("index.jsp"); 
  
 
   %>
  
 
</body>
</html>
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
 <%  
    String shopname =  request.getParameter("username") ;
    String password = request.getParameter("pass");
    String email =  request.getParameter("email") ;
    String country = request.getParameter("country");
    String state = request.getParameter("state");
    String city =  request.getParameter("city") ;
    String contact =  request.getParameter("contact") ;
 System.out.println(country);
 Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
 
  int rs= st.executeUpdate("insert into shopkeeper values ('"+shopname+"','"+password+"','"+email+"','"+country+"','"+state+"','"+city+"','"+contact+"')");

%>
 <% response.sendRedirect("index.jsp");


%>
</body>
</html>
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
 <%   String details =  request.getParameter("locality");
      Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
 

   if(details.equals("jalmahel"))
  {
	  response.sendRedirect("jalmahel.jsp");
  }
  else if(details.equals("hawamahel"))
  {
	  response.sendRedirect("hawamahel.jsp");
  }
  else if(details.equals("juhu_beach"))
  {
	  response.sendRedirect("juhu.jsp"); 
  }
  else
  {
	  response.sendRedirect("gateway.jsp"); 
  }
  
  %>

</body>
</html>
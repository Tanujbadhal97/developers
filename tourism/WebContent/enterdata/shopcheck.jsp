<%@page import="org.omg.PortableInterceptor.SYSTEM_EXCEPTION"%>
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
<%  String shopname =  request.getParameter("shopname") ;
 String state = request.getParameter("state");
 String city =  request.getParameter("city") ;
 String tourist_place =  request.getParameter("tourist_place") ;
 String address =  request.getParameter("address") ;
 String food_name[] =  request.getParameterValues("bName[]") ;
 System.out.println(shopname); 

 System.out.println(state);

 System.out.println(city);

 System.out.println(tourist_place);

 System.out.println(address);
 System.out.println(food_name); 
    Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
  
  
  String sql="insert into shopdetails values";
  System.out.println(sql);
  int ind=1;
  for(String s1 : food_name )
  {
	  if(ind==1)
	  {
	sql+="('"+shopname+"','"+state+"','"+city+"','"+tourist_place+"','"+address+"','"+s1+"')";
	  }
	  else
	  {
			sql+=",('"+shopname+"','"+state+"','"+city+"','"+tourist_place+"','"+address+"','"+s1+"')";
	 }
		ind++;	    
  }
  
  System.out.println(sql);
 int rs=st.executeUpdate(sql);
   %>
   <h1>shopkeepers data successfully added</h1>
 
 <a href="../index.jsp">click here to directly get back to home page</a>
 
</body>
</html>
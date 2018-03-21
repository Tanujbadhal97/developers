<%@page import="com.arya.dto.touristDTO"%>

<%@page import="p1.DBconfig, java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form method="post">
<br>
<br>
<br>
<br>
<table border="2" align="center">
<tr>
<td>shopname</td>
<td>state</td>
<td>city</td>
<td>tourist_place</td>
<td>address</td>
<td>food</td>
</tr>
<%
try
{
	  
	  touristDTO sdto= new  touristDTO();
	  
	   sdto.setTourist_place(request.getParameter("locality"));
	   sdto.setFood(request.getParameter("food_type"));
	   String food=touristDTO.getFood();
		String place=touristDTO.getTourist_place();
	 Connection c= DBconfig.getConnection();
	  Statement st= c.createStatement();
	  String sql="select * from shopdetails where food='"+food+"'and tourist_place='"+place+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{

%>
    <tr><td><%=rs.getString("shopname") %></td>
    <td><%=rs.getString("state") %></td>
    <td><%=rs.getString("city") %></td>
     <td><%=rs.getString("tourist_place") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getString("food")%></td></tr>
   <%}else { %>
    </table>
   <h1 align="center">no data found</h1>
    <%}
    rs.close();
    st.close();
    c.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }

 %> 




</form>
</html> 
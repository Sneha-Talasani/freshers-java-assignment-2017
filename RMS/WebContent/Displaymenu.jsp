<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="f1" action="Order.jsp" method="get">
<%
String cna=request.getParameter("t1");
out.println("<h2> Welcome "+cna+" ,your table is booked</h2>");
out.println("<hr>");
%>
<table>
<tr><th>Starters</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
PreparedStatement st=conn.prepareStatement("Select * from Menu  where Type='starters' order by id");
ResultSet rs= st.executeQuery();
while(rs.next())
{
%>
<tr><td><%=rs.getInt("id")%></td>
<td><%=rs.getString("iname")%></td>
<td><%=rs.getInt("iprice")%></td>
<%
}
%>
<tr><th>Main Course</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st1=conn.prepareStatement("Select * from Menu where Type='mainCourse' order by id");
ResultSet rs1= st1.executeQuery();
while(rs1.next())
{
%>
<tr><td><%=rs1.getInt("id")%></td>
<td><%=rs1.getString("iname") %></td>
<td><%=rs1.getInt("iprice")%></td></tr>
<%
}
%>
<tr><th>Beverages</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st2=conn.prepareStatement("Select * from Menu  where Type='beverages' order by id");
ResultSet rs2= st2.executeQuery();
while(rs2.next())
{
%>
<tr><td><%=rs2.getInt("id")%></td>
<td><%=rs2.getString("iname") %></td>
<td><%=rs2.getInt("iprice")%></td></tr>
<%
}
%>
<tr><th>Desserts</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st3=conn.prepareStatement("Select * from Menu where Type='desserts' order by id");
ResultSet rs3= st3.executeQuery();
while(rs3.next())
{
%>
<tr><td><%=rs3.getInt("id")%></td>
<td><%=rs3.getString("iname") %></td>
<td><%=rs3.getInt("iprice")%></td></tr>
<%
}
%>
</table>
<input type="submit" value="select items">
</form>
</body>

</html>

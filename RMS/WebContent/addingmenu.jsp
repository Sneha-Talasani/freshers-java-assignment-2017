<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding</title>
</head>
<body>
<form name ="f1" action="addmenu.html">
<% 

String type=request.getParameter("ddltype");
String id=request.getParameter("txtId");
String name=request.getParameter("txtName");
String price=request.getParameter("txtPrice");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");

PreparedStatement st=conn.prepareStatement("Insert into menu values(?,?,?,?)");

st.setString(1,type);
st.setInt(2,Integer.parseInt(id));
st.setString(3,name);
st.setInt(4,Integer.parseInt(price));

st.executeUpdate();


%>
</form>
</body>
</html>
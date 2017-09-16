<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
String uname=request.getParameter("txtUser");
String pwd=request.getParameter("txtPwd");
if(uname.equals("admin") && pwd.equals("admin"))
	response.sendRedirect("addmenu.html");
else
	out.println("Please enter valid Username/Password");
%>
</body>
</html>
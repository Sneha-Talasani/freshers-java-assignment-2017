<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>
<form name="f1" action= Displaymenu.jsp method="post">
<center><h2 style="color:red">Welcome to Rubicon Restaurant</h2></center>
<h3 style="text-align: right"><a href="login.html" >Staff Login</a></h3>
<h3> Warm wishes</h3>
<table>
<tr><td>Enter name</td><td><input type="text" name="t1" /></td></tr>
<tr><td>Select a table from below</td></tr>
<tr><td><input type="radio" name="table" value="table 1">Table 1</td>
<td><input type="radio" name="table" value="table 2">Table 2</td>
<td><input type="radio" name="table" value="table 3">Table 3</td></tr>
<tr><td><input type="radio" name="table" value="table 4">Table 4</td>
<td><input type="radio" name="table" value="table 5">Table 5</td>
<td><input type="radio" name="table" value="table 6">Table 6</td>
</tr>
<tr><td><input type="submit" value="Confirm Booking" /></td></tr>
</table>
</form>
</body>
</html>
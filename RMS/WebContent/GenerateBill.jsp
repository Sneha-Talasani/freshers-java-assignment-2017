<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>

</head>
<body>
<h2>Bill</h2>
<table border='1' width='100%'>
<tr>
<td>Item</td>
<td>Price</td>
<td>Quantity</td>
<td>Total Price</td>
</tr>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
String[] starters;
String[] qtys;
qtys=request.getParameterValues("txtn");
int amt=0, j=0;

starters=request.getParameterValues("chk1");
if(starters!=null)
{int m=0;
	for(int i=0;i<starters.length;i++)
	{ 
		%>
		<tr><td><% out.println(starters[i]);%></td>
		<%	
		PreparedStatement st = conn.prepareStatement("Select iprice from menu where iname=?");
		st.setString(1,starters[i]);
		ResultSet rs= st.executeQuery();
		while(rs.next())
		{
			int t = rs.getInt("iprice");
			boolean y=true;
			while(y)
			{
				if(!(qtys[j].equals("0")))
				{
					 m=Integer.parseInt(qtys[j]);
					y=false;
				}
				j++;
			}
			amt=amt+(t*m);
			
	
		%>
		
		<td><%=t%></td>
		<td><%out.println(m);%></td><td><%out.println(t*m);%></td></tr>		
		<%
		}
	}
	out.println("\n");
}
String[] maincourse;
maincourse=request.getParameterValues("chk2");
if(maincourse!=null)
{int p=0;
	for(int i=0;i<maincourse.length;i++)
	{
		%>
		<tr><td><% out.println(maincourse[i]);%></td>
		<%PreparedStatement st = conn.prepareStatement("Select iprice from menu where iname=?");
		st.setString(1,maincourse[i]);
		ResultSet rs= st.executeQuery();
		while(rs.next())
		{
			int t=rs.getInt("iprice");
			boolean y=true;
			while(y)
			{
				if(!(qtys[j].equals("0")))
				{
					 p=Integer.parseInt(qtys[j]);
				     y=false;
				}
				j++;
				
			}
			amt=amt+(t*p);
		
		%>
		<td><%=t%></td>
		<td><%out.println(p); %></td><td><%out.println(t*p);%></td></tr>
		<%
		}
	
	}
	out.println("\n");
}

String[] beverages;
beverages=request.getParameterValues("chk3");
if(beverages!=null)
{
	for(int i=0;i<beverages.length;i++)
	{int q=0;
		%>
		<tr><td><% out.println(beverages[i]);%></td>
		<%PreparedStatement st = conn.prepareStatement("Select iprice from menu where iname=?");
		st.setString(1,beverages[i]);
		ResultSet rs= st.executeQuery();
		while(rs.next())
		{
			int t=rs.getInt("iprice");
			boolean y=true;
			while(y)
			{
				if(!(qtys[j].equals("0")))
				{
					 q=Integer.parseInt(qtys[j]);
					 y=false;
				}
				j++;
			}
			amt=amt+(t*q);
			
			
		%>
		<td><%=t%></td>
		<td><%out.println(q); %></td><td><%out.println(t*q);%></td></tr>
		<%
		}
		
	}
	out.println("\n");
}

String[] desserts;
desserts=request.getParameterValues("chk4");
if(desserts!=null)
{
	for(int i=0;i<desserts.length;i++)
	{
		int s=0;
		%>
		<tr><td><% out.println(desserts[i]);%></td>
		<%PreparedStatement st = conn.prepareStatement("Select iprice from menu where iname=?");
		st.setString(1,desserts[i]);
		ResultSet rs= st.executeQuery();
		while(rs.next())
		{
			int t=rs.getInt("iprice");
			boolean y=true;
			while(y)
			{
				if(!(qtys[j].equals("0")))
				{
					 s=Integer.parseInt(qtys[j]);
					 y=false;
				}
				j++;
			}
			amt=amt+(t*s);
			
		%>
		<td><%=t%></td>
		<td><%out.println(s); %></td><td><%out.println(t*s);%></td></tr>
		<% 
		}
		
	}
	out.println("\n");
}%>

<tr>
<td colspan='2'></td>
<td><b>Grand Total</b></td>
<td><% out.println(amt);%></td></tr>
</table>
<center><h2 style="color:green">Thank You.Visit Again</h2></center>
</body>
</html>
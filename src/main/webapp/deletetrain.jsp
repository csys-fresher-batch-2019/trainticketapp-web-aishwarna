<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.railwayimple.railwayreservationproject.Trains" %>
    <%@page import=" java.util.ArrayList" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  bgcolor="#E6E6FA">
<div align="center">
<br>
<br>
<br>

<form action="deletetrain.jsp" method="post">
<h2>DELETE TRAIN BASED ON TRAIN NAME</h2>
Enter the Train name:<input type="text" name="name"><br><br>
<input type="submit" name="submit" value="delete">
</form>
<form action="deletetrain.jsp" method="post">
<%
Trains t=new Trains();
List<Trains> list = new ArrayList<Trains>();
String tname=request.getParameter("name");
t.deletetrain(tname);%>

</form>
</div>
</body>
</html>
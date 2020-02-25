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
<br>
<h1><center>WELCOME TO RAILWAY RESERVATION SYSTEM</center></h1><br>
<br>
<br><div align="center">
<h3>Search Based on Train Name</h3>
<form action="searchByTrain.jsp" method="post">
Enter the Train name:<input type="text" name="name"><br><br>
<input type="submit" name="submit" value="submit">
</form>
<form action="searchByTrain.jsp" method="post">
<%
Trains t=new Trains();
List<Trains> list = new ArrayList<Trains>();
String tname=request.getParameter("name");
list=t.searchByTrainName1(tname);%>
<body>
<% if(tname!=null){%>
<table border="1">
<theader><th>Train Name</th><th>Journey starts</th><th>Journey ends</th></theader>
<%for(Trains train : list){%>
 <tr>
 <td><%=train.getTrainname() %>
 <td><%=train.getJourneystarts() %>
 <td><%=train.getJourneyends()%>
 </tr>
<%}
%>
</table><%} %>
</body>



</form>
</div>
</body>
</html>
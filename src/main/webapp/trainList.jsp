<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.railwayimple.railwayreservationproject.Trains"%>
<%@page import="java.util.List"%>
<%@page import= "java.time.LocalDateTime"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Trains</title>
</head>
<body  bgcolor="#E6E6FA">
<% 	Trains ts=new Trains();
List<Trains> list = ts.displayTrainNames();
%>
<center>
<table border="1">
<thead><tr><th>Train</th></tr></thead>
<tbody>
<%
for (Trains t : list) {%>
<tr>
<td><%t.getTrainid();%></td>
<td><%t.getTrainname();%></td>
<td><%t.getJourneystarts();%></td>
<td><%t.getJourneyends();%></td>
<td><%t.getArrivaltime();%></td>
<td><%t.getDepaturetime();%></td>
<td><%t.getBirthtype();%></td>
</tr>
<%}
%>
</tbody>
</table>
</center>
</body>
</html>
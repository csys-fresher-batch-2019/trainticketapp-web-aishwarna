<!DOCTYPE html5>
<%@page import="java.util.List"%>
<%@page import="com.railwayimple.railwayreservationproject.Trains"%>
<html>
<head>
<title>Train Details</title>
</head>
<%Trains t = new Trains();
String trainname = request.getParameter("trainname");
List<Trains> list = t.displayTrainDetails(trainname);%>
<body  bgcolor="#E6E6FA">
<table border="1">
<theader><th>Train id</th><th>Journey starts</th><th>Journey ends</th><th>Arrivaltime</th><th>Depaturetime</th></theader>
<%for(Trains train : list){%>
 <tr>
 <td><%=train.getTrainid() %>
 <td><%=train.getJourneystarts() %>
 <td><%=train.getJourneyends()%>
 <td><%=train.getArrivaltime() %>
 <td><%=train.getDepaturetime() %>
 </tr>
<%}
%>
</table>
</body>
</html>
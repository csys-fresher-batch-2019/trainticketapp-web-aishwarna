
<!DOCTYPE html5>

<%@page import="java.util.List"%>
<%@page import="com.railwayimple.railwayreservationproject.Trains"%>
<html>
<head>
<title>Train Details</title>
</head>
<%Trains t = new Trains();
List<Trains> list = t.displayTrainNames();%>
<body  bgcolor="#E6E6FA"><br>
<h1><center>WELCOME TO RAILWAY RESERVATION SYSTEM</center></h1><br>
<br>
<form action ='AddBookingDetail.jsp'>
<center><table border="1"></center>
<font color="black"><h2><center>TrainDetails</center></h2></font>
<theader><th>Train id</th><th>Train name</th><th>Journey starts</th><th>Journey ends</th></theader>
<%for(Trains train : list){%>
 <tr>
 <td><%=train.getTrainid() %>
 <td><%=train.getTrainname() %>
 <td><%=train.getJourneystarts() %>
 <td><%=train.getJourneyends()%>
 </tr>
<%}
%>
</table>
<br/>
<br/>
<button type = "submit">BookNow</button>

</form>
<br><br>
<a href="searchByTrain.jsp" >Search By Train Name</a><br>

</body>
</html>
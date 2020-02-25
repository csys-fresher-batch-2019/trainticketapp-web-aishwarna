
<!DOCTYPE html5>
<%@page import="java.util.List"%>
<%@page import="com.railwayimple.railwayreservationproject.Trains"%>
<html>
<head>
<title>Train Details</title>
</head>
<%Trains t = new Trains();
List<Trains> list = t.displayTrainNames();%>
<body  bgcolor="#E6E6FA">
<form >
<center><table border="1"></center><br>
<br>
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


</form>
<br><br>
<a href="deletetrain.jsp" >Delete Train</a>
</body>
</html>
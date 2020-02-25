<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body bgcolor="#E6E6FA">
<form action="AddTrainsservlet">
<h1 style="background-color:DodgerBlue;">RAILWAY RESERVATION</h1>
<h2 style="background-color:rgb(255, 99, 71);">WELCOME TO INDIAN RAILWAYS</h2>

<h3> ADD TRAINS</h3>
Enter TrainName:       <input type="text" name="trainname"required/>
<br/><BR>
Enter TrainId :        <input type="text" name="Trainid"required/>
<br/><br>
Enter JourneyStarts:   <input type="text" name="source"required/>
<br/><br>
Enter JourneyEnds:     <input type="text" name="destination"required/>
<br/><br>
Enter DepartureTime:    <input type="text" name="depaturetime"required/>
<br/><br>
Enter ArrivalTime:     <input type="text" name="arrivaltime"required/>
<br/><br>
Enter BirthType:       <input type="text" name="birth"required/>
<br/><br>
 <input type="submit" name="submit" value="Add"/>
</form>
</body>
</html>
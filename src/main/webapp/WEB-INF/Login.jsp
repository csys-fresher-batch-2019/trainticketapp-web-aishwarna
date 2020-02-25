<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<!--  <form action = "enroll.jsp">-->
<style>
body {
 background-color: orange;
}
button {
background-color:black;
}
</style>
<h3 align="center">LOGIN</h3>
<center>Enter TrainName :  <input type="text" name="trainname" 
placeholder="Enter TrainName" required autofocus/></center>
<br/>
<br/>
<center>Enter Source  : <input type="text" name="source"
required></center>
<br/>
<br/>
<center>Enter Destination  : <input type="text" name="destination"
required></center>
<br/>
<br/>
<center>Enter Date of journey:
<input type="date" name="doj" /></center>
<br/>
<br/>
<center>
<button type="submit" ><center>Submit</center></button>
</center>
</form>
</body>
</html>



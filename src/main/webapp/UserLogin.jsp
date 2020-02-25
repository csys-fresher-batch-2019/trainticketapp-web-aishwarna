<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<style>

button {
background-color:white;
}
</style>
<body  bgcolor="#E6E6FA">
<form action="UserLoginServlet"  >
<br>
<br>
<br>
<h3 align="center">USER LOGIN</h3>
<hr>
<br>
<center>Enter ContactNumber:  <input type="text" name="contactno"maxlength="10"required autofocus/></center>
<br/>
<br/>
<center>Enter Password  : <input type="password" name="password"
required></center>
<br/>
<br/>
<center>
<button type="submit" ><center>Submit</center></button><br><br>
<hr>
</center>
</form>
</body>
</html>



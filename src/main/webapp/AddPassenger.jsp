<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Passenger</title>
</head>
<body  bgcolor="#E6E6FA">
<h2>Registration</h2>
<form action="AddPassengerServlet"  method ="post">

Enter PassengerName:  <input type="text"   name="passengername"required/>
<br/><br>
Enter gender:         <input type="radio" name="gender" value=male> Male
                      <input type="radio" name="gender" value=female>Female <br><br>
Enter ContactNumber:  <input type="text" name="contactno"maxlength="10"required/>
<br/><br>
Enter AadharNumber :  <input type="text" name="Adharno" maxlength="14"required/>
<br/><br>
Enter Password :      <input type="password" name="password"required/>
<br/><br>
<input type="submit" name="submit"/>
</form>
</body>
</html>
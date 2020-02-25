<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body  bgcolor="#E6E6FA">


<br>
<h1><center>WELCOME TO RAILWAY RESERVATION SYSTEM</center></h1><br>

<br>
<br>
<form action="AddBookingServlet"  method ="get">
<left><h2>TrainBooking</h2>
Enter Trainid:     <input type="text" name="trainid" maxlength="4">
<br/>
<br>
Enter PassengerId: <input type="text" name="passengerid">
<br/><br>
Enter coachtype:    <select name="coachtype">
    <option value="AC">ac</option>
    <option value="NONAC">nonac</option>
  </select>
  <br/><br>
Enter birthtype:    <select name="birthtype">
   <option value="SlEEPER">sleeper</option>
   <option value="SITTING">sitting</option>
   <option value="ACSlEEPER">acsleeper</option>
   <option value="ACSITTING">acsitting</option></select>
   <br/>
   <br>
      
 Enter Date of Travel: <input type="date" id="travel_date" name="travel_date" required><br/>
   
   
 <input type="submit" name="submit" value="submit"/>   </left>    
         <br/>  <br>          
         
   <br>
         <script>
   
function setTodayDate(){
var today = new Date();
console.log(today);
var dateStr  = today.toJSON().substr(0,10); //toJSON returns "2020-02-20T09:32:45.644Z" ( get only date)
console.log(dateStr);
$("#travel_date").val(dateStr);
$("#travel_date").attr("min", dateStr);
}
setTodayDate();
</script>
  
   </body>
</html>
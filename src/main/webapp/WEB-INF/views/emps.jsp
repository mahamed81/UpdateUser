<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
<h1 style="color:blue">List of Employees</h1>
<div style="border: 1px solid black; width: 50%;"> 
	<table>
		<tr>
			<td>ID</td>	
			<td>Name</td>
			<td>Email</td>
			<td>City</td>
		
		 </tr>
	
	<c:forEach items= "${employees}" var="emps" >

		<tr>
			
			<td>${emps.id}</td>
			<td>${emps.name}</td>
			<td>${emps.email}</td>
			<td>${emps.city}</td>
			<td><a type = "button" href="/editemp?id=${emps.id }"> Update</a> </td>
			<td><a type = "button" href="/delemp?id=${emps.id }"> Delete</a> </td>
			
		 </tr>
			
		 </c:forEach>

	</table>
	</div>
</body>
</html>
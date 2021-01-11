<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
	<h1 style="color: blue">List of Employees</h1>

	<form:form action="delemp" method="post" modelAttribute="delete">
		<table>
			<tr>
				<td>ID</td>
				<td>${delete.id}
				<form:hidden path="id"/>
				</td>
				
			</tr>
			<tr>
				<td>Name</td>
				<td>${delete.name}
				<form:hidden path="name"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${delete.email}
				<form:hidden path="email"/></td>
			</tr>
			<tr>
				<td>City</td>
				<td>${delete.city}
				<form:hidden path="city"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Delete"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>
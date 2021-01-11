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
<h1 style="color:blue"></h1>
	
	
	<form:form action="find" method="post" modelAttribute="hello">
		<table>
			<tr>
				<td>ID</td>
				<td>${hello.id}
				<form:hidden path="id" name="id"/>	
				</td>
				
			</tr>
			<tr>
				<td>Name</td>
				<td>${hello.name}
				<form:hidden path="id" name="name"/>	
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${hello.email}
				<form:hidden path="id" name="email"/>	
				</td>
			</tr>
			<tr>
				<td>City</td>
				<td>${hello.city}
				<form:hidden path="id" name="city"/>	
				</td>
				
			</tr>
			<tr>
				<td>
				<a type="button" href="/editemp?id=${hello.id}">Update</a>
				</td>
				
				
			</tr>
		</table>

	</form:form>
</body>
</html>
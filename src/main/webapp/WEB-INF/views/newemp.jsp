<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Employee</title>
</head>
<body>
	<h1>Add New Employee</h1>

	<form:form modelAttribute="form">
		<div>
			<!-- Spring form -->
		
			Name: <form:input path="name"/><br>
			Email: <form:input path="email"/><br>
			City: <form:input path="city"/><br>
	
		</div>

		<div>
			<!-- Normal submit form -->
			<input type="submit" value="Add Employee"/>
		</div>

	</form:form>

</body>
</html>
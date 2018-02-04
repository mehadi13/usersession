<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>BJIT</title>
</head>
<body>
	<h1>User Login</h1>
	<div class="container">
	<form:form action="dologin" method="post" modelAttribute="user">
		<table>
			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:password path="password" /></td>
			</tr>
			<tr>
				<td><button type="submit">Login</button></td>
			</tr>
		</table>
	</form:form>
</div>
	<span style="color: red;">${message}</span>
</body>
</html>
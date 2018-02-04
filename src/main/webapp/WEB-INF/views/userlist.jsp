<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>

</head>
<body>
<c:out value="${username}"/>
	<table class="table">
		<thead>
			<tr>
			<td>Id</td>
				<td>Name</td>
				<td>Email</td>
				<td>Password</td>
				<td>Gender</td>
				<td colspan="2">Action</td>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
				<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
					<td>${user.gender}</td>
					<td><a href="users/update/${user}">Edit</a></td>
					<td><a href="users/delete/${user.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</thead>
	</table>
</body>
</html>
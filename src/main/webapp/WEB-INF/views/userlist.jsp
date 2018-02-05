<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>

</head>
<body>
<c:out value="${username}"/>
	<table class="table">
		<thead class="thead-dark">
			<tr>
			<td>Id</td>
				<td>Name</td>
				<td>Email</td>
				<td>Password</td>
				<td>Gender</td>
				<td>Role</td>
				<td colspan="2" align="center">Action</td>
			</tr>
			</thead>
			<c:forEach items="${users}" var="user">
				<tr>
				<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
					<td>${user.gender}</td>
					<td>${user.role}</td>
					<td><a href="users/update/${user.id}" class="btn btn-warning">Edit</a></td>
					<td><a href="users/delete/${user.id}" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		
	</table>
</body>
</html>
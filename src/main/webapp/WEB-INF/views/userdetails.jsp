<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

<h2>User Success From</h2>
	<hr />
	<c:out value="${username}"/>
	<table class="table">
		<tr>
			<th>Name</th>
			<td>${user.name}</td>
		</tr>
		<tr>
			<th>Email</th>
			<td>${user.email}</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td>${user.gender}</td>
		</tr>
		<tr>
			<th>Address</th>
			<td>${user.address}</td>
		</tr>
		<tr>
			<th>Role</th>
			<td>${user.role}</td>
		</tr>
	</table>
	
	<div class="container" align= "center">
	<a href="/usersession/users/update/${user.id}" class="btn btn-warning">Edit</a>
	</div>

</body>
</html>
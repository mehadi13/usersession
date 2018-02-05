<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BJIT</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<p><h1>Hi</h1><c:out value="${username}"/></p>
	<table class="table">
	<tr><td colspan=3><p><a href="logout">LogOut</a></p> </td></tr>
	<tr><td><a href="users/${userid}">View profile</a></td>
	<c:if test="${role=='admin'}">
	<td><a href="users/adduser">Add User</a></td>
	<td><a href="users">View User List</a></td>
	</c:if>
	</tr>
	</table>
	
	<!-- Click here to view the session attributes -->
	
	
	
	
	
	
</body>
</html>
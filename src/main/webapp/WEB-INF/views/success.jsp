<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BJIT</title>
</head>
<body>
	<h1>Hi</h1>
	<p><c:out value="${username}"/></p>

	<!-- Click here to view the session attributes -->
	<a href="users/${userid}">View profile</a>
	<c:if test="${role=='admin'}">
	<a href="users/adduser">Add User</a>
	<a href="users">View User List</a>
	</c:if>
</body>
</html>
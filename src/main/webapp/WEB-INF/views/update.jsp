<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>BJIT</title>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<p><c:out value="${username}"/></p>
	<h2>User Update From</h2>
	
	<hr />
	<form:form action="/usersession/users/update" method="post" modelAttribute="user">
		<table class="table">
			<form:input type="hidden" path="id" value="${user.id}" />
			<form:input type="hidden" path="password" value="${user.password}" />
			<tr>
				<th>Name</th>
				<td><form:input path="name" value="${user.name}"/> <form:errors path="name"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><form:input path="email" value="${user.email}" /> <form:errors path="email"
						cssClass="error" /></td>
			</tr>
			<%-- <tr>
				<th>Password</th>
				<td><form:input type="text" path="password" value="${user.password}" /> <form:errors
						path="password" cssClass="error" /></td>
			</tr> --%>
			<tr>
				<th>Address</th>
				<td><form:input path="address" value="${user.address}" /> <form:errors path="address"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" /> <form:errors
						path="gender" cssClass="error" /></td>
			</tr>
			<c:choose>
			<c:when test="${role=='admin'}">
			<tr>
				<th>Role</th>
				<td><form:radiobutton path="role" value="admin" label="admin" />
					<form:radiobutton path="role" value="general" label="general" /> <form:errors
						path="role" cssClass="error" /></td>
			</tr>
			</c:when>
			
			<c:when test="${role!='admin' }">
			<form:input type="hidden" path="role" value="${user.role}" />
			</c:when>
			</c:choose>
			
			
			<tr>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<h2>User Input From</h2>
	<hr />
	<form:form class="form-control" action="user" method="post" modelAttribute="user">
		<table class="tabel">
		<tr>
				<th>Name</th>
				<td><form:input path="name" /> <form:errors path="name"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><form:input path="email" /> <form:errors path="email"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><form:input path="password" /> <form:errors path="password"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><form:input path="address" /> <form:errors path="address"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" /> <form:errors
						path="gender" cssClass="error" /></td>
			</tr>
			
			<tr>
				<th>Role</th>
				<td><form:radiobutton path="role" value="admin" label="admin" />
					<form:radiobutton path="role" value="general" label="general" /> <form:errors
						path="role" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
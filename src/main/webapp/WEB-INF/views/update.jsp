<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<form:form action="update" method="put" modelAttribute="user">
		<table>
			<form:input type="hidden" path="id" value="${id}" /> 
			<tr>
				<th>Name</th>
				<td><form:input path="name" value="${name}"/> <form:errors path="name"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><form:input path="email" value="${email}" /> <form:errors path="email"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><form:input path="password" value="${password}" /> <form:errors
						path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><form:input path="address" value="${address}" /> <form:errors path="address"
						cssClass="error" /></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" /> <form:errors
						path="gender" cssClass="error" /></td>
			</tr>
			<tr>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
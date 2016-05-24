<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Surame</th>
				<th>Login</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.surname}</td>
				<td>${user.login}</td>
				<td>${user.email}</td>
				<td>${user.phone}</td>
			</tr>
		</tbody>
	</table>

</body>
</html>
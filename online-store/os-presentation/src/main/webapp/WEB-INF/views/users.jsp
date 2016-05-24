<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 Users count is : ${users.size()}
<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Login</th>
				<th>Email</th>
				<th>Link</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.name}</td>
				<td>${user.login}</td>
				<td>${user.email}</td>
				<td>${user.phone}</td>
				<td><a href="user.html?id=${user.id}">view</a>></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
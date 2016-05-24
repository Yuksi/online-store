<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="UTF-8" content="text/html; charset=UTF-8">
<title>registration</title>
</head>
<body>
	<form:form commandName="user">
		<p>Введите id (временно): <form:input path="id" type="number" placeholder="Введите id"/></p>
		<p>Введите имя: <form:input path="name" type="text" placeholder="Введите имя"/></p>
		<p>Введите фамилию: <form:input path="surname" type="text" placeholder="Введите фамилию"/></p>
		<p>Введите логин: <form:input path="login" type="text" placeholder="Введите логин"/> </p>
		<p>Введите пароль: <form:input path="password" type="password" placeholder="Введите пароль"/></p>
		<p>Введите e-mail: <form:input path="email" type="email" placeholder="Введите e-mail"/></p>
		<p>Введите номер телефона: <form:input path="phone" type="tel" placeholder="Введите номер телефона"/></p>
		<p><input type="submit" value="Регистрация"></p>
	</form:form>
</body>
</html>
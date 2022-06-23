<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> ${ message }</h1>
	<h1> ${ message }</h1>
	<%
		java.util.Date date = new Date();
	
		for (int i = 0; i < 10; i++)
			out.write("<h1> " + date.toString() +" <h1>");
	%>
</body>
</html>
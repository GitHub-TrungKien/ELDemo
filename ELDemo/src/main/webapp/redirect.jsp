<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Go to gooogle.com</title>
</head>
<body>
<c:url value="https://google.com/search" var="googleSearch">
	<c:param name="q" value="Ai la nguoi dep trai nhat"></c:param>
</c:url>
<c:redirect url="${ googleSearch }"></c:redirect>
</body>
</html>
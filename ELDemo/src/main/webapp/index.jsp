<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="student" scope="page" class="com.itplus.eldemo.Student"></jsp:useBean>
    <jsp:setProperty name="student" property="name" value="Nguyen Van A"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EL Demo</title>
</head>
<body>
${1 + 1}
${10 mod 3}
${empty param.numberA }
${!empty param.numberA }
${ student.name }
</body>
</html>
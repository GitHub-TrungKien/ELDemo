<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <jsp:useBean id="student" scope="page" class="com.itplus.eldemo.Student"></jsp:useBean>
    <jsp:setProperty name="student" property="name" value="<script>console.log('tesst')</script>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jstl demo</title>
</head>
<body>
<!-- c:out -->
<c:out value="${ student.name }"/>
Similar to but with escape
<%= student.getName() %>
${ student.name }

<!-- c:if -->
<c:if test="${!empty param.numberA}">
	Number A is <c:out value="${param.numberA}"/>
	<!-- c:choose -->
	<c:choose>
		<c:when test="${param.numberA > 0}">
			Number A is greater than zero!
		</c:when>
		
		<c:when test="${param.numberA == 0}">
			Number A is equals zero!
		</c:when>
		
		<c:otherwise>
			Number A contain invalid value
		</c:otherwise>
	</c:choose>
</c:if>

<!-- c:forEach -->
<c:forEach begin="0" end="100" step="1" var="i">
	<p>Item <c:out value="${i}"/></p>
</c:forEach>
<% 
List listItems = new ArrayList<String>();
listItems.add("Item Test 01");
%>
<c:forEach items="${listItems}" var="item">
	<p>Item <c:out value="${item}"/></p>
</c:forEach>

<!-- c:forTokens -->
<c:forTokens items="Cat,Dog,Lion" delims="," var="animal">
  <p><c:out value="${animal}"></c:out></p>
</c:forTokens>

<!-- c:url -->
<!-- c:param -->
<c:url value="sumByParam.jsp" var="mySum">
	<c:param name="numberA" value="100"></c:param>
	<c:param name="numberB" value="150"></c:param>
</c:url>

<c:import url="${mySum}"></c:import>

<!-- c:set -->
<c:set var="totalVisited" scope="session" value="${9999}"></c:set>
<c:out value="${totalVisited }"/>
${!empty sessionScope.totalVisited }
<!-- c:remove -->
<c:remove var="totalVisited" scope="session"/>
${!empty sessionScope.totalVisited }

<!-- c:catch -->
<c:catch var="exception">
	<% int a = 100/0;  %>
</c:catch>

<c:if test="${!empty exception }">
	Exception is: ${exception }
	Exception messages is: ${exception.message }
</c:if>
</body>
</html>
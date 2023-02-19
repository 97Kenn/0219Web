<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:out value="${123}"/>
 
 	<c:set var="DataBaseName" value="maxim1"/>
	<c:set var="DataBaseUserAccount" value="admin1"/>
	<c:set var="DataBaseUserPassword" value="admin1"/>
	<c:set var="DataBaseURL"/>
	
	<%
	String name=(String)pageContext.getAttribute("DataBaseName");
	String url="jdbc:mysql://localhost:3306/"+name;
	pageContext.setAttribute("DataBaseURL",url);
	%>
	<sql:setDataSource var="DataBase" driver="com.mysql.cj.jdbc.Driver"
	url="${DataBaseURL}" user="${DataBaseUserAccount}" password="${DataBaseUserPassword}"/>
	
	<!-- sql:query 資料表查詢 -->
	<sql:query dataSource="${DataBase}" var="result">
		SELECT * FROM signup;
	</sql:query>

	
	<table border="1" align="center">
		<tr>
			<th>userset</th>
			<th>emailset</th>
			<th>usernameset</th>
			<th>phoneset</th>
			<th>addressset</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.userset}"/></td>
				<td><c:out value="${row.emailset}"/></td>
				<td><c:out value="${row.usernameset}"/></td>
				<td><c:out value="${row.phoneset}"/></td>
				<td><c:out value="${row.addressset}"/></td>
			</tr>
		</c:forEach>
	</table>
 
</body>
</html>
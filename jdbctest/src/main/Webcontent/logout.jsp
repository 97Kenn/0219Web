<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<jsp:directive.page import="java.sql.ResultSet" />
<jsp:directive.page import="java.sql.SQLException" />
<jsp:directive.page import="java.sql.PreparedStatement"/>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<jsp:directive.page import="java.sql.Timestamp"/>
<jsp:directive.page import="java.sql.Date"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小租家 登出頁</title>
</head>
<body>

<%
	
	Cookie cookie = new Cookie("user",null);
	cookie.setMaxAge(0);
	response.addCookie(cookie);
    response.sendRedirect("index.html"); 

%>


</body>
</html>
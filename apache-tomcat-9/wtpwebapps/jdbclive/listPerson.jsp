<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<jsp:directive.page import="java.sql.Date" />
<jsp:directive.page import="java.sql.Timestamp" />
<jsp:directive.page import="java.sql.SQLException"/>
<!DOCTYPE HTML>
<html>
	<head>
		<title>客戶名單</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">body, td, th, input {font-size:12px; text-align:center; }</style>
	</head>
	<body>

		<table align=right>
			<tr>
				<td>
					<a href="addPerson.jsp">新增人員資料</a>
				</td>
			</tr>
		</table>
		<br />
		<br />
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url="jdbc:mysql://localhost:3306/databaseweb";
	String user="sam";
	String password="sam";
	
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
	
		conn = DriverManager.getConnection(url,user,password);

		
		// 獲得 Statement。 Statement 對像用於執行 SQL。相當於控制台。
		stmt = conn.createStatement();
		
		// 使用 Statement 執行 SELECT 敘述。傳回結果集。
		rs = stmt.executeQuery("select * from tb_person");	
		
%>
		<form action="operatePerson.jsp" method=get>
			<table bgcolor="#CCCCCC" cellspacing=1 cellpadding=5 width=100%>
				<tr bgcolor=#DDDDDD>
					<th>選取項目</th>
					<th>
						自動編號
					</th>
					<th>
						姓名
					</th>
					<th>
							英文名
					</th>
					<th>
							性別
					</th>
					<th>
						年齡
					</th>
					<th>
						生日
					</th>
					<th>
						備註
					</th>
					<th>
						記錄建立時間
					</th>
					<th>
						操作
					</th>
				</tr>
				<%
					// 檢查資料集，使用rs.next() 傳回結果集中是否還有下一條記錄

					while (rs.next()) {

						int id = rs.getInt("id");
						int age = rs.getInt("age");

						String name = rs.getString("name"); 
						String englishName = rs.getString("english_name");
						String sex = rs.getString("sex");
						String description = rs.getString("description");

						Date birthday = rs.getDate("birthday"); 
						Timestamp createTime = rs.getTimestamp("create_time");

						out.println("		<tr bgcolor=#FFFFFF>");
						out.println("	<td><input type=checkbox name=id value=" + id
						+ "></td>");
						out.println("	<td>" + id + "</td>");
						out.println("	<td>" + name + "</td>");
						out.println("	<td>" + englishName + "</td>");
						out.println("	<td>" + sex + "</td>");
						out.println("	<td>" + age + "</td>");
						out.println("	<td>" + birthday + "</td>");
						out.println("	<td>" + description + "</td>");
						out.println("	<td>" + createTime + "</td>");
						out.println("	<td>");
						out.println("		<a href='operatePerson.jsp?action=del&id="
						+ id + "' onclick='return confirm(\"確定刪除該記錄？\")'>刪除</a>");
						out.println("		<a href='operatePerson.jsp?action=edit&id="
						+ id + "'>修改</a>");
						out.println("	</td>");
						out.println("		</tr>");

					}
				%>
			</table>
			<table align=left>
				<tr>
					<td>
						<input type='hidden' value='del' name='action'>
						<a href='#'
							onclick="var array=document.getElementsByName('id');for(var i=0; i<array.length;
							i++){array[i].checked=true;}">全選</a>
						<a href='#'
							onclick="var array=document.getElementsByName('id');for(var i=0; i<array.length;
							i++){array[i].checked=false;}">取消全選</a>
						<input type='submit'
							onclick="return confirm('即將刪除所選擇的記錄。是否刪除？'); " value='刪除'>
					</td>
				</tr>
			</table>
		</form>
<%
	}catch(SQLException e){
		out.println("發生了例外：" + e.getMessage());
		e.printStackTrace();
	}finally{
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
	}
%>
	</body>
</html>

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
<html>
	<head>
  		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>小租家 登入成功頁面</title>
        <link rel="icon" type="image/x-icon" href="../gray/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="../gray/css/styles.css" rel="stylesheet" />
	</head>
	<body>


<%!
	/** SQL 值中的單引號(')需要轉化為 \'  */
	public String forSQL(String sql){
		return sql.replace("'", "\\'");
	}
%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String userlogin = request.getParameter("userlogin");
	String passwordlogin = request.getParameter("passwordlogin");
	
	Cookie cookie = new Cookie("user",userlogin);
	//cookie.setMaxAge();//
			
	Connection conn = null;
	Statement stmt = null;
	String url="jdbc:mysql://localhost:3306/maxim1";
	String user="admin1";
	String password="admin1";
	
	
	int result = 0;


	Class.forName("com.mysql.cj.jdbc.Driver");
	
	// 獲得資料庫連接。 三個參數分別為 連接URL，使用者名稱，密碼
	conn = DriverManager.getConnection(url,user,password);
	
	// 獲得 Statement。 Statement 對像用於執行 SQL。相當於控制台。
	stmt = conn.createStatement();
	//sql語句，搜尋這個username和password在資料庫是否存在
	String sql="select * from signup where userset='"+userlogin+"'and passwordset='"+passwordlogin+"'";
	//執行sql語句，並把得到的結果放入結果集ResultSet中
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		  //設定一個user，將後面user其內容賦值給前面一個user，可以以便下一個頁面使用
		  response.addCookie(cookie);
		  request.setAttribute("userlogin", userlogin);
		  //跳轉頁面到member.jsp
		  request.getRequestDispatcher("loginwait.jsp").forward(request, response);
	
		}else{
		  //設定一個error,將後面的字賦給這個error，以便下一個跳轉頁面的使用，request的作用域有限
		  request.setAttribute("error", "!!!使用者名稱或密碼錯誤!!!");
		  request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
		conn.close();
		rs.close();
 %>
	


</body>
</html>
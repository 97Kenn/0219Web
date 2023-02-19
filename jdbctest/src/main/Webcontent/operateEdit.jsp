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
  		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>小租家 修改結果頁面</title>
        <link rel="icon" type="image/x-icon" href="../gray/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="../gray/css/styles.css" rel="stylesheet" />
        
        <!-- Favicons -->
	  <link href="assets/img/favicon1.png" rel="icon">
	  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	
	  <!-- Vendor CSS Files -->
	  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
	  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	  <!-- Template Main CSS File -->
	  <link href="assets/css/style.css" rel="stylesheet">

	  <!-- =======================================================
	  * Template Name: maxim1 - v4.10.0
	  * Template URL: https://bootstrapmade.com/maxim1-free-onepage-bootstrap-theme/
	  * Author: BootstrapMade.com
	  * License: https://bootstrapmade.com/license/
	  ======================================================== -->
        
        <style>
        body{
        background-color:#7a7979
        }        
        .txt1{
        font-size:18px;
        }

        .chkalign{
        text-align:center;
        }
        
        </style>
	</head>
	<body>


<%
	Cookie cookie = null ;
	Cookie cookies [] = request.getCookies ();
      if (cookies != null){
        for (int i = 0; i < cookies.length; i++) {
          if (cookies [i].getName().equals ("user")&&cookies [i].getValue()!=null){

        	  cookie = cookies[i];
        	  //String userset1 = cookie.getValue();
        	  pageContext.setAttribute("userset",cookie.getValue());
          }
        }
      }
      else{
      }
	
	%>


		<%!
		/** SQL 值中的單引號(')需要轉化為 \'  */
		public String forSQL(String sql){
			return sql.replace("'", "\\'");
		}
	%>	


<%

	request.setCharacterEncoding("UTF-8");
		
		String userset = (String)pageContext.getAttribute("userset");
		
		
		String passwordset = (String)request.getAttribute("passwordset1");
		String emailset = (String)request.getAttribute("emailset");
		String usernameset = (String)request.getAttribute("usernameset");
		String phoneset = (String)request.getAttribute("phoneset");
		String addressset = (String)request.getAttribute("addressset");
		
		String action = request.getParameter("action");

		if("add".equals(action)){

		// INSERT SQL 敘述
		String sql = "INSERT INTO signup " +
					" ( userset, passwordset, " +
					"   emailset, usernameset, phoneset,  " +
					"   addressset ) values " +
					" ( '" + forSQL(userset) + "', '" + forSQL(passwordset) + "', " +
					"   '" + forSQL(emailset) + "', '" + forSQL(usernameset) + "', '" + forSQL(phoneset) + "', " +
					"   '" + forSQL(addressset) + "' ) " ;
		
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String url="jdbc:mysql://localhost:3306/maxim1";
		String user="admin1";
		String password="admin1";
		
		int result = 0;
		
		try{
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 獲得資料庫連接。 三個參數分別為 連接URL，使用者名稱，密碼
			conn = DriverManager.getConnection(url,user,password);
			
			// 獲得 Statement。 Statement 對像用於執行 SQL。相當於控制台。
			stmt = conn.createStatement();
			
			// 使用 Statement 執行 SQL 敘述
			result = stmt.executeUpdate(sql);
		
		
		
		
		
		}catch(SQLException e){
			//out.println("執行SQL\"" + sql + "\"時發生例外：" + e.getMessage());
			//out.println("請點選連結重新註冊");		
			//response.sendRedirect("signup.jsp");
			request.setAttribute("errorsign", "!!!使用者名稱已被註冊!!!");
			request.getRequestDispatcher("signup.jsp").forward(request, response);
			return;
		}finally{
			if(stmt != null)	stmt.close();
			if(conn != null)	conn.close();
		}
		
		%>
	
		<div class="login-form" >
          <form action="member.jsp" method="post">
            <img src="assets/img/piglogo.png" width="100px" height="100px">
            <h1 style="font-family:Microsoft JhengHei;">小租家</h1>
            <div class="signupset-title">
              <h1 style="font-family:Microsoft JhengHei;">註冊成功!!</h1>
            </div>
            </br>
            </br>          
			<a href='login.jsp' class="btn btn-success"><b>回去登入頁</b></a>	
          </form>
        </div>
	
<%
		return;
		
	}
	
	
	else if("edit".equals(action)){
		
		
		String sql = "SELECT * FROM signup WHERE userset = " + "'" + userset + "'";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String url="jdbc:mysql://localhost:3306/maxim1";
		String user="admin1";
		String password="admin1";
		
		try{


			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
	
			if(rs.next()){
				// 有記錄 將響應字段從資料庫中取出 儲存到 request 中，顯示到 修改頁面
				request.setAttribute("userset", rs.getString("userset"));
				request.setAttribute("passwordset", rs.getString("passwordset"));
				request.setAttribute("emailset", rs.getString("emailset"));
				request.setAttribute("usernameset", rs.getString("usernameset"));
				request.setAttribute("phoneset", rs.getString("phoneset"));
				request.setAttribute("addressset", rs.getString("addressset"));
				
				request.setAttribute("action", action);
				
				// 轉到修改頁面
				request.getRequestDispatcher("editSignup.jsp").forward(request, response);
			}
			else{
				// 沒有資料
				out.println("沒有找到 使用者名稱 為 " + userset + " 的記錄。");
			}
		}catch(SQLException e){
			out.println("執行SQL\"" + sql + "\"時發生例外：" + e.getMessage());
			e.printStackTrace();
		}finally{
			if(rs != null)		rs.close();
			if(stmt != null)	stmt.close();
			if(conn != null)	conn.close();
		}
	}

	else if("save".equals(action)){
		
		String usersets = (String)request.getParameter("userset");
		String passwordsets = (String)request.getParameter("passwordset1");
		String emailsets = (String)request.getParameter("emailset");
		String usernamesets = (String)request.getParameter("usernameset");
		String phonesets = (String)request.getParameter("phoneset");
		String addresssets = (String)request.getParameter("addressset");
		
		
		String sql = "UPDATE signup SET " +
					" 	passwordset = '" + forSQL(passwordsets) + "', " +
					" 	emailset = '" + forSQL(emailsets) + "', " +
					"	usernameset = '" + forSQL(usernamesets) + "', " +			
					" 	phoneset = '" + phonesets + "', " +
					" 	addressset = '" + forSQL(addresssets) + "' " +
					" WHERE userset = " + "'" + userset + "'";
		
		
		Connection conn = null;
		Statement stmt = null;
		String url="jdbc:mysql://localhost:3306/maxim1";
		String user="admin1";
		String password="admin1";
		
		try{

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			
			stmt = conn.createStatement();
			
			// 使用 Statement 執行 SQL 敘述
			int result = stmt.executeUpdate(sql);
	
			out.println("<html><style>body{font-size:12px; line-height:25px; }</style><body>");
			
			if(result == 0)		out.println("影響數目為 0, 修改失敗. ");
			else	out.println("資料修改成功!!"+result + " 條記錄被修改。");
			
			out.println("<a href='member.jsp' class='btn btn-success'>回到會員中心</a>");
			
		
			
		}catch(SQLException e){
			out.println("執行SQL\"" + sql + "\"時發生例外：" + e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt != null)	stmt.close();
			if(conn != null)	conn.close();
		}
	}
	
	/*
	else{
		String id = request.getParameter("id");
		String sql = "UPDATE signup SET passwordset = ?, emailset = ?, usernameset = ?, phoneset = ?, addressset = ? WHERE userset = ? ";
		
		Connection conn = null;
		PreparedStatement preStmt = null;
		String url="jdbc:mysql://localhost:3306/maxim1";
		String user="admin1";
		String password="admin1";
		
		try{

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			
			preStmt = conn.prepareStatement(sql);
			preStmt.setString(1, userset);
			preStmt.setString(2, passwordset);
			preStmt.setString(3, emailset);
			preStmt.setString(4, usernameset);
			preStmt.setString(5, phoneset);
			preStmt.setString(6, addressset);
			//preStmt.setInt(7, Integer.parseInt(id));
			
			// 使用 preStmt 執行 SQL 敘述
			int result = preStmt.executeUpdate(sql);
	
			out.println("<html><style>body{font-size:12px; line-height:25px; }</style><body>");
			
			if(result == 0)		out.println("影響數目為 0, 修改失敗. ");
			else	out.println(result + " 條記錄被修改。");
			
			out.println("<a href='listPerson.jsp'>傳回人員列表</a>");
			
	
			
		}catch(SQLException e){
			out.println("執行SQL\"" + sql + "\"時發生例外：" + e.getMessage());
			e.printStackTrace();
		}finally{
			if(preStmt != null)	preStmt.close();
			if(conn != null)	conn.close();
		}
	} 
	*/
	

%>

	</body>
</html>


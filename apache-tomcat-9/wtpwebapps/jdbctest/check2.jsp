<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<jsp:directive.page import="java.sql.ResultSet" />
<jsp:directive.page import="java.sql.SQLException" />
<jsp:directive.page import="java.sql.PreparedStatement"/>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<jsp:directive.page import="java.sql.Timestamp"/>
<jsp:directive.page import="java.sql.Date"/>
<jsp:directive.page import="java.util.ArrayList"/>
<jsp:directive.page import="java.util.List"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>小租家 室內家具出租服務</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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
  * Template Name: Maxim - v4.10.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1><a href="index.html"><img src="assets/img/piglogo.png" alt="" class="img-fluid">小租家 <a1>室內家具出租服務</a1></i></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>

        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  


  <main id="main">
    <section class="check-page" >
      <div class="check-form" >
          <img src="assets/img/piglogo.png" width="100px" height="100px">
            <h1 style="font-family:Microsoft JhengHei;">小租家</h1>
          <div class="check-title">
            <h1 style="font-family:Microsoft JhengHei;">商品結帳</h1>
          </div>
                <div class="container">
                  <div class="row justify-content-center text-center mb-5">
                      <div class="col-12 col-md">
                          <div class="alert alert-warning rounded-pill mr-2" role="alert">
                           <Strong>選擇付款方式與品項</Strong></br>
                            </br>
<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" autocomplete="off">
<label class="btn btn-outline-danger" for="danger-outlined">超商繳費付款</label>

<input type="radio" class="btn-check" name="options-outlined" id="primary-outlined" autocomplete="off">
<label class="btn btn-outline-primary" for="primary-outlined">銀行轉帳付款</label>

<input type="radio" class="btn-check" name="options-outlined" id="success-outlined" autocomplete="off">
<label class="btn btn-outline-success" for="success-outlined">LINE&nbsp;Pay結帳</label>
                          </div>
                      </div>
                  </div>

   
          <table class="table table-hover table-warning table-sm" style="text-align:center;">
         
                <thead style="text-align:center;">
                    <tr style="text-align:center;">
                        <th scope="col">#</th>
                        <th scope="col">商品</th>
                        <th scope="col">價格</th>
                        <th scope="col">數量</th>
                        <th scope="col">期限</th>
                        <th scope="col">刪除</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                
                       <%!
                	public String forSQL(String sql)
                    {
                		return sql.replace("'", "\\'");
                	}
                    %>
                    <%
                    
                    request.setCharacterEncoding("UTF-8");

            		int pricetotal=0;
            		String cartitems = "";
                    String username = null;
                    Cookie cookies[]=request.getCookies();
                    if(cookies!=null) {
                    	for(Cookie c:cookies) {
                    		if(c.getName().equals("user")) {
                    			username=c.getValue();
                    		}
                    		
                    		if(c.getName().equals("cart")) {
                    			cartitems=c.getValue();
                    		}
                    	}
                    	if(cartitems==null){
                    		Cookie varynewcookie = new Cookie("cart",cartitems);
                    		varynewcookie.setMaxAge(30*24*3600);
                    		response.addCookie(varynewcookie);
                    	}
                    }
                    
            		
                  
                    
                    
                    
                    
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
            			
            			
            		
            				
            				String mycart = cartitems;
            				String[] fff = mycart.split("/");
            				
            				int i=0;
        					for(String f : fff){
								if(i!=0){
        						out.println("<tr>"+
        	            				"<td>"+f+"</td>");
        	            				
        						ResultSet trs = stmt.executeQuery("select * from inventory where id='"+f+"'");
        						
        						while(trs.next()){
        							
        							int pricet = Integer.valueOf(trs.getString("price"));
        							
        							pricetotal +=pricet;
        							
        							out.println("<td>"+trs.getString("name")+"</td>");
        							out.println("<td>"+pricet+"</td>");
        							out.println("<td>"+trs.getString("count")+"</td>");
        						}
        						
            					out.println(
            				"<td>"+" 一個月 "+"</td>"+
            				"<td><form method='post' action='ClientData.jsp?del="+f+"/"+i+"'><button name='delete_cart_btn' class='badge bg-danger' >刪除</button>"+
            				"<input type='hidden' name='headder' id='headder' value='check2' ></form></td>"+
            				"</tr>");
								}
            					i++;
            				}
            				
        					
            				

            			
            			

            		}catch(SQLException e){
            			//out.println("執行SQL\"" + sql + "\"時發生例外：" + e.getMessage());
            			//out.println("請點選連結重新註冊");		
            			//response.sendRedirect("signup.jsp");
            	

            		}finally{
            			if(stmt != null)	stmt.close();
            			if(conn != null)	conn.close();
            			
            		}

            		
%>
                
                
               
                   </tr>

                </tbody>
                
					<th>總計: <% out.print(pricetotal); %>$</th>		
            </table>
            <%
              if(cartitems.length()>1){
               out.println("                     <form action='ClientData.jsp?action=smb' method='post' name='cartform' > "+
                         " <input type='submit' name='cart-submit' value='完成結帳' class='cart-submit'></br>"+
                          
                          
                          "</form>");
              }
              
              %>
      </div>
    </section>

  </main>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
<%@page import="java.util.ArrayList"%>
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
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>小租家 會員中心頁</title>
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
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
  
  <!-- 引用外部javascript -->
  <script src="scripts/GetCookie.js"></script>
  <!-- 引用jQuery -->
  <script src="scripts/jquery.min.js"></script>

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: maxim1 - v4.10.0
  * Template URL: https://bootstrapmade.com/maxim1-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
    li{
      list-style: none;
    }
  </style>
  

</head>

<body>
<%

request.setCharacterEncoding("utf-8");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
ResultSet rsII = null;
ResultSet rsIII = null;
String url="jdbc:mysql://localhost:3306/maxim1";
String user="admin1";
String password="admin1";

int result = 0;


Class.forName("com.mysql.cj.jdbc.Driver");

conn = DriverManager.getConnection(url,user,password);

stmt = conn.createStatement();

//(3 資料調用)



//   cookie here
String username = null;
        Cookie cookies[]=request.getCookies();
        if(cookies!=null) {
        	for(Cookie c:cookies) {
        		if(c.getName().equals("user")) {
        			username=c.getValue();
        		}
        	}
        }
        
        

%>
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
          <li><a class="nav-link scrollto" href="index.html">回首頁</a></li>
          <li><a class="nav-link scrollto" href="cart.jsp" target="_blank">瀏覽購物車商品<i class='bx bxs-cart bx-tada' style='color:#bce7b6'></i></a></li>
          <li><a class="nav-link scrollto" href="logout.jsp">會員登出</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">
  
  
    
	

    <!-- 會員中心  會員中心 會員中心 會員中心 會員中心 會員中心 會員中心-->
    <section class="member-page"  >
        <div class="member-form" >
          <form action="" method="post" name="memberform1" >
            <img src="assets/img/piglogo.png" width="100px" height="100px">
              <h1 style="font-family:Microsoft JhengHei;">小租家</h1>
            <div class="member-title">
              <h1 style="font-family:Microsoft JhengHei;">會員中心</h1>
            </div>    
            
            <div class="memberset">        
              <section id="member" class="member section-bg">
                <div class="container">         
                  <div class="member-list">
                    <ul>          
                      <li data-aos="fade-up" data-aos-delay="">
                        <a data-bs-toggle="collapse" data-bs-target="#member-list-2" class="collapsed">會員基本資料 <i class="bx bx-chevron-down icon-show" ></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="member-list-2" class="collapse" data-bs-parent=".member-list">

                          <table class="table table-hover table-warning table-sm" style="text-align:center;">
                            <thead style="text-align:center;">
                                <tr style="text-align:center;">
                                    <th scope="col">使用者名稱</th>
                                    <th scope="col">電子信箱</th>
                                    <th scope="col">手機號碼</th>
                                    <th scope="col">運送地址</th>
                                    <th scope="col">用戶姓名</th>
                                </tr>
                            </thead>
     
                            <tbody>
								<tr>
<% 

						//印出會員資料
   
                      rs = stmt.executeQuery("SELECT * FROM signup WHERE userset = " + "'"+username+"'");
                  	while(rs.next()){   
                     String userset = rs.getString("userset");
                     String passwordset = rs.getString("passwordset");
                     String emailset = rs.getString("emailset");
                     String usernameset = rs.getString("usernameset");
                     String phoneset=(String)rs.getString("phoneset");
                     String addressset = rs.getString("addressset");
                     
                     
                   
                     	/*
                     	out.println("  <tr style='text-align:center';> ");
                     	out.println(" <td>"+userset+"</td> ");
                     	out.println(" <td>"+emailset+"</td> ");
                     	out.println(" <td>"+usernameset+"</td> ");
                     	out.println(" <td>"+phoneset+"</td> ");
                     	out.println(" <td>"+addressset+"</td> ");
                     	//out.println(" <td></td> ");
                     	out.println(" </tr> ");*/
                     	
                    out.println("  <tr style='text-align:center';> ");
                  	out.println(" <td>"+userset+"</td> ");
                  	out.println(" <td>"+emailset+"</td> ");
                  	out.println(" <td>"+phoneset+"</td> ");
                  	out.println(" <td>"+addressset+"</td> ");
                  	out.println(" <td>"+usernameset+"</td> ");
                  	
                  	out.println(" </tr> ");
                     	 
                      }
                   
%>    
									
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
							
                          </table>
                           <!--修改資料按鈕 --><a class="btn  btn-outline-warning"  href="operateEdit.jsp?action=edit&userset="${userset}>修改會員資料</a>
                        </div>
                      </li>
          
          
                      <li data-aos="fade-up" data-aos-delay="">
                        <a data-bs-toggle="collapse" data-bs-target="#member-list-4" class="collapsed">目前租賃商品<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="member-list-4" class="collapse" data-bs-parent=".member-list">
                          
                          <h5 style="font-family:Microsoft JhengHei;">目前租賃商品</h5>

                          <table class="table table-hover table-warning table-sm" style="text-align:center;">
                            <thead style="text-align:center;">
                                <tr style="text-align:center;">
                                    <th scope="col">訂單編號#</th>
                                    <th scope="col">商品名稱</th>
                                    <th scope="col">數量</th>
                                    <th scope="col">價格</th>
                                    <th scope="col">租約到期日</th>
                                    <th scope="col">租賃日期</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%

                                // List
                                ArrayList<Integer> orderlist_itemid = new ArrayList<Integer>(); // 商品ID  -1
                                ArrayList<String> orderlist_itemname = new ArrayList<String>(); // 商品名稱
                                ArrayList<Integer> orderlist_itemcount = new ArrayList<Integer>(); // 商品數
                                ArrayList<Integer> orderlist_itemprice = new ArrayList<Integer>(); // 商品價格  -1
                                ArrayList<String> Orderduedate = new ArrayList<String>(); // 商品日期end  -1
                                ArrayList<String> OrderCreatTime = new ArrayList<String>(); // 商品日期now  -1
                                

                                // sql
                                
                                // orderlist
                            	rs = stmt.executeQuery 
            					("SELECT * FROM `orderlist` WHERE `OrderUser` LIKE '"+username+"'");
                                
                                while(rs.next())
                                {
                                	orderlist_itemid.add(rs.getInt("OrderID"));           	
                                	Orderduedate.add(rs.getString("Orderduedate"));
                                	OrderCreatTime.add(rs.getString("OrderCreatTime"));
                                	orderlist_itemprice.add(rs.getInt("price"));     
                                }
                                
                				//rs.close();
                				
							//rsIII
                            		rsIII = stmt.executeQuery 
                        					("SELECT * FROM `inventory` ");
                            		
                            		while(rsIII.next())
                            		{
                            			orderlist_itemname.add(rsIII.getString("name"));
                            			
                            		}
                            		
                            	
                             	//rsIII.close();
                            //rsII
                                for(int i = 0;i<orderlist_itemid.size();i++)
                                {
                                	rsII = stmt.executeQuery 
                        					("SELECT * FROM `ordermodel` WHERE `id` = "+ orderlist_itemid.get(i));
                                	
                                	while(rsII.next())
                                	{
                                		
                                		out.println("<tr>");
                                		out.println("<td>"+orderlist_itemid.get(i)+"</td>");
                                		out.println("<td>");
                                		for(int a =0;a<5;a++){
                                			
                                			if(a!=0){
                                			if(rsII.getInt("itemidno"+a)!=0)
                                				{
                                				

                                			String sf=	orderlist_itemname.get(rsII.getInt("itemidno"+a));
											
                                            out.println(sf +"<br>");
                                            
                                            
 
                                				}
                                			}
                                		}
                                		out.println("</td>");
                                		
                                		out.println("<td>");
                                		for(int a =0;a<5;a++){
                                			
                                			if(a!=0){
                                			if(rsII.getInt("itemidno"+a)!=0)
                                				{

                                            out.println(rsII.getInt("i"+a+"count")+"<br>");
                                				}
                                			}
                                		}
                                		out.println("</td>");
                                		
                                		out.println("<td>"+orderlist_itemprice.get(i)+"</td>");
                                        out.println("<td>"+Orderduedate.get(i)+"</td>");
                                        out.println("<td>"+OrderCreatTime.get(i)+"</td>");
                                        out.println("</tr>");
  
                                	}
                                	
   
                                	
                                }
                                //rsII.close();

                                
                                %>
                                
                            </tbody>
                          </table>

                        </div>
                      </li>
          
                      <li data-aos="fade-up" data-aos-delay="">
                        <a data-bs-toggle="collapse" data-bs-target="#member-list-5" class="collapsed">歷史訂單<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="member-list-5" class="collapse" data-bs-parent=".member-list">
                        
                          <h5 style="font-family:Microsoft JhengHei;">歷史訂單</h5>

                          <table class="table table-hover table-warning table-sm" style="text-align:center;">
                            <thead style="text-align:center;">
                                <tr style="text-align:center;">
                                    <th scope="col">訂單編號#</th>
                                    <th scope="col">商品名稱</th>
                                    <th scope="col">數量</th>
                                    <th scope="col">價格</th>
                                    <th scope="col">到期日</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            <%

                                // List

                                ArrayList<Integer> orderlist_itemcount2 = new ArrayList<Integer>(); // 商品數
                                ArrayList<Integer> orderlist_itemprice2 = new ArrayList<Integer>(); // 商品價格  -1
                                ArrayList<String> Orderduedate2 = new ArrayList<String>(); // 商品日期end  -1
                                ArrayList<String> OrderCreatTime2 = new ArrayList<String>(); // 商品日期now  -1

                                // sql
		
							//rsIII
                            	
                             	rsIII.close();
                            //rsII
                                for(int i = 0;i<orderlist_itemid.size();i++)
                                {
                                	rsII = stmt.executeQuery 
                        					("SELECT * FROM `ordermodel` WHERE `id` = "+ orderlist_itemid.get(i));
                                	
                                	while(rsII.next())
                                	{
                                		
                                		out.println("<tr>");
                                		out.println("<td>"+orderlist_itemid.get(i)+"</td>");
                                		out.println("<td>");
                                		for(int a =0;a<5;a++){
                                			
                                			if(a!=0){
                                			if(rsII.getInt("itemidno"+a)!=0)
                                				{
                                				

                                			String sf=	orderlist_itemname.get(rsII.getInt("itemidno"+a));
											
                                            out.println(sf +"<br>");
                                            
                                            
 
                                				}
                                			}
                                		}
                                		out.println("</td>");
                                		
                                		out.println("<td>");
                                		for(int a =0;a<5;a++){
                                			
                                			if(a!=0){
                                			if(rsII.getInt("itemidno"+a)!=0)
                                				{

                                            out.println(rsII.getInt("i"+a+"count")+"<br>");
                                				}
                                			}
                                		}
                                		out.println("</td>");
                                		
                                		out.println("<td>"+orderlist_itemprice.get(i)+"</td>");
                                        out.println("<td>"+Orderduedate.get(i)+"</td>");
                                        //out.println("<td>"+OrderCreatTime.get(i)+"</td>");
                                        out.println("</tr>");
  
                                	}
                                	
   
                                	
                                }
                                if(rsII!=null) rsII.close();

                                
                                %>
                              <!--    <tr>
                                  <td></td> 
                                  <td></td> 
                                  <td></td> 
                                  <td></td>
                                  <td></td> -->
                                </tr>
                            </tbody>
                          </table>
                        </div>

                      </li>

                    </ul>
                  </div>       
                </div>
              </section><!-- End member Section -->
            </div>
          </form>
        </div>
    </section>

  </main><!-- End #main -->  
 <%
 if(rsII!=null)rsII.close();
 if(rs!=null)rs.close();

	stmt.close();

	conn.close();
%>

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
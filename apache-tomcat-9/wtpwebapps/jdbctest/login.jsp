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
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>小租家 會員登入頁</title>
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
		
<%

		Cookie cookies [] = request.getCookies ();
          if (cookies != null){
            for (int i = 0; i < cookies.length; i++) {
              if (cookies [i].getName().equals ("user")&&cookies [i].getValue()!=null){

               request.getRequestDispatcher("member.jsp").forward(request, response);
               break;
              }
            }
          }
          else{
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


    </div>
  </header><!-- End Header -->

  <main id="main">


    <!-- 登入表單 登入表單 登入表單 登入表單 登入表單 登入表單 -->
    <section class="login-page"  >
        <div class="login-form" >
          <form action="loginverify.jsp" method="post">
            <img src="assets/img/piglogo.png" width="100px" height="100px">
            <h1 style="font-family:Microsoft JhengHei;">小租家</h1>
            <h5 style="font-family:Microsoft JhengHei;">小資族的家具管家</h5>
            <div class="signupset-title">
              <h1 style="font-family:Microsoft JhengHei;">會員登入</h1>
            </div>    

			<strong>${ error }</strong></br>
			<strong>${ error }</strong></br>
			<strong>${ error }</strong></br>
			
            <div class="login-user-password">
              <label>
                <h5 style="font-family:Microsoft JhengHei; margin-bottom: 5px;">使用者名稱</h5>
                <input type="text" name="userlogin" value="" placeholder="使用者名稱" style="margin-bottom:10px;"></br>
              </label>
              <label>
                <h5 style="font-family:Microsoft JhengHei; margin-bottom: 5px;" >輸入密碼</h5>
                <input type="password" name="passwordlogin"  value="" placeholder="密碼"></br>
              </label>  
            </div>
             <input type="submit" name="login-submit" value="登入" class="login-submit"></br>
             <a href="signup.jsp" target="_blank" class="login-page-a " >還沒註冊嗎?點這裡</a>
          </form>
        </div>
    </section>

  </main><!-- End #main -->

 

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
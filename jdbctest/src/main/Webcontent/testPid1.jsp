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
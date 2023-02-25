<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<%
	// 注意是取 request 參數而不是地址欄參數，因此用 getAttribute 方法而不是 getParameter
	String action = (String)request.getAttribute("action");

	String id = (String)request.getAttribute("id");
	String userset = (String)request.getAttribute("userset");
	String passwordset = (String)request.getAttribute("passwordset1");
	String emailset = (String)request.getAttribute("emailset");
	String usernameset = (String)request.getAttribute("usernameset");
	String phoneset = (String)request.getAttribute("phoneset");
	String addressset = (String)request.getAttribute("addressset");
	
	// 是 增加頁面 還是 修改頁面，下文中根據此變數做相應的處理
	//boolean isEdit = "edit".equals(action);
%>


<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>小租家 會員註冊頁</title>
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
          <li><a class="nav-link scrollto" href="login.html">會員登入</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">


    <!-- 註冊表單 註冊表單 註冊表單 註冊表單 註冊表單 註冊表單 -->
    <section class="signup-page">
        <div class="signup-form">
        
        
          <form action="operateSignup.jsp" method="post" name="signupform1">
            <input type="hidden" name="action" value="<%="add"%>">
			<input type="hidden" name="id" value="<%=id%>">
            <img src="assets/img/piglogo.png" width="100px" height="100px">
              <h1 style="font-family:Microsoft JhengHei;">小租家</h1>
              <h5 style="font-family:Microsoft JhengHei;">小資族的家具管家</h5>

            <div class="signupset-title">
              <h1 style="font-family:Microsoft JhengHei;">會員註冊</h1>
              <h6 style="font-family:Microsoft JhengHei;">請填寫正確資料</h6>
            </div>
                
 			<strong style="color:red; font-size:20px">${ errorsign }</strong>
			
            <div class="signupset">
              <label><h5 style="font-family:Microsoft JhengHei;">設置使用者名稱</h5>
                <input type="text" name="userset" value="" placeholder="創建使用者名稱" style="margin-top: 0px;" required/></br>
              </label>
              
              <div class="form-floating">
                <h5 style="font-family:Microsoft JhengHei;">設置密碼</h5>
                <input type="password" name="passwordset1" id="passwordset1" value="" placeholder="創建密碼"  minlength="6" maxlength="15" required/> 
                <i id="checkEye" class="fas fa-eye" style="color:#000"></i>
              </div>

              <label><h5 style="font-family:Microsoft JhengHei;">再次確認密碼</h5>
                <input type="password" name="passwordset2" id="passwordset2" value="" placeholder="再次輸入密碼" minlength="6" maxlength="15" onblur="return checkPass()" required/></br>
                <span id="errorpassword" style="display:none;">兩次輸入的密碼不一致!</span>
                <span id="correctpassword" style="display:none;">兩次輸入的密碼正確一致!</span>
              </label>

              <label><h5 style="font-family:Microsoft JhengHei;">設置信箱</h5>
                <input type="email" name="emailset"  value="" placeholder="xxx@mail.com" required /></br>
              </label>

              <label><h5 style="font-family:Microsoft JhengHei;">輸入使用者姓名</h5>
                <input type="text" name="usernameset"  value="" placeholder="輸入姓+名" required /></br>
              </label> 
              
              <label><h5 style="font-family:Microsoft JhengHei;">輸入手機號碼</h5>
                <input type="text" name="phoneset"  value="" placeholder="09xx-xxx-xxx"  minlength="10" maxlength="10" required /></br>
              </label>

              <label><h5 style="font-family:Microsoft JhengHei;">輸入運送地址</h5>
                <input type="text" name="addressset"  value="" placeholder="請輸入詳細地址" required /></br>
              </label>

            
            </div>
                <input type="submit" name="signup-submit" value="確認註冊" class="signup-submit"></br>
                <input type="reset" name="reset" value="清除重填" class="signup-submit"></br>
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
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
	<c:set var="pid" value="1"/>
	<c:set var="imgsrc"/>
	<c:set var="orderID"/>
	<%
	String pid=(String)pageContext.getAttribute("pid");
	String src="img/"+pid+".jpg";
	String order="order"+pid;
	pageContext.setAttribute("imgsrc",src);
	pageContext.setAttribute("orderID",order);
	%>
	<!-- 載入商品資料庫 -->
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
	<sql:query dataSource="${DataBase}" var="result">
    	SELECT * FROM product;
	</sql:query>
	
	<c:forEach var="row" items="${result.rows}">
		<c:if test="${row.item_index==pid}">   <!-- ??????????????????????????????????????????????????????????????? -->
			<c:set var="pname" value="${row.pname}"/>
			<c:set var="pprice" value="${row.pprice}"/>
			<c:set var="pquantity" value="${row.pquantity}"/>
			<c:set var="pstock" value="${row.pstock}"/>
		</c:if>
	</c:forEach>
	<br>
	<div class="container-fluid" id="align_center">
		<div class="row">
			<div class="col-5">
				<img src="${imgsrc}"  width="100%" height="95%">
			</div><!-- 對應到col-5 -->
			<div class="col-1"></div><!-- 空白部分 -->
			<div class="col-6">
				<h3><span>【White & Wood】北歐風雙人床架+床墊</span></h3>
				<p><span> 大板拼接，穩固支撐</span></p>
				<p><span> 琴弦造型床頭，簡約優雅</span></p>
                <p><span> 安全無毒板材，歐美雙重認證</span></p>
                <p><span> 床腳收合於床框內，避免碰撞</span></p>
                <p><span> 商品編號 : <c:out value="${itemID}"/></span></p>
                <hr size="8px" width="100%">
                <h3>商品規格</h3>
                <p>商品尺寸(寬/長/高)(cm) : 160 x 195 x 102/42 (床墊 : 寬152 x 長188)</p>
                <p>床架材質 : 白橡木實木</p>
                <hr size="8px" width="100%">
                <h3>每月租金計算</h3>
                
			</div><!-- 對應到col-6 -->
		</div><!-- 對應到row -->
	</div><!-- 對應到align_center -->
	<br>
	
			<div class="col-2">
				<button id="AddCart" type="button" class="btn btn-warning" onclick="javascript:AddCart();"><!-- 按下按鍵時就會觸發javascript函數AddCart -->
					<script>
            			function AddCart(){
            				/*點擊按鈕後就會新增cookie，並且跳出視窗提示使用者*/
            				document.cookie="${order}"+"="+"${pid}";
                			window.alert("已加入購物車");
            			}
            		</script>
					加入購物車
				</button>
			</div><!-- 對應到col-2 -->


            <div class="col-2">
            	<button type="button" class="btn btn-warning" onclick="javascript:ToCart();">
            		<sql:query dataSource="${DataBase}" var="result">
    					SELECT userset,passwordset from signup;
					</sql:query>
					<c:set var="LoginUser"/>
					<c:set var="LoginPassword"/>
					<c:forEach var="row" items="${result.rows}">
						<c:set var="row_userset" value="${row.userset}"/>
						<c:set var="row_passwordset" value="${row.passwordset}"/>
						<%
						String Row_userset=(String)pageContext.getAttribute("row_userset");
						String Row_passwordset=(String)pageContext.getAttribute("row_passwordset");
						Cookie[] cookies=request.getCookies();
						for(int i=0;i<cookies.length;i++){
	    					if((cookies[i].getName().equals(Row_userset))&&(cookies[i].getValue().equals(Row_passwordset))){
	    						pageContext.setAttribute("LoginUser",Row_userset);
	    						pageContext.setAttribute("LoginPassword",Row_passwordset);
	    						break;
	    					}
	    					else{
	    					}
	   					}
						%>
					</c:forEach>	
            		<script>
            			function ToCart(){
            				if("${LoginPassword}"==GetCookieValueByName("${LoginUser}")){
            					window.location.assign("cart.jsp");
            				}
            				else{
            					window.location.assign("login.jsp");
            				}
            			}
            		</script>
            		前往購物車
            	</button>
            </div><!-- 對應到col-3 -->
		</div><!-- 對應到row -->
	</div><!-- 對應到container -->
	<script>
		var hidebutton="${status}";
		if(hidebutton=="no"){
			$(document).ready(function(){
				$("#AddCart").hide();
	    	});
		}
	</script>
	<!-- 引用Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
</html>
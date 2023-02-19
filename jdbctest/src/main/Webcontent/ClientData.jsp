<%@page import="org.apache.tomcat.util.http.fileupload.impl.FileItemStreamImpl"%>
<%@page import="org.apache.tomcat.util.http.fileupload.MultipartStream.ItemInputStream"%>
<%@page import="java.util.stream.Stream"%>
<%@page import="java.util.List"%>
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
<jsp:directive.page import="java.util.Date"/>

<jsp:directive.page import="java.text.*"/>
<jsp:directive.page import="java.util.*"/>
<html>
	<head>
  		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>小租家 註冊結果頁面</title>
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



<%!
	/** SQL 值中的單引號(')需要轉化為 \'  */
	public String forSQL(String sql){
		return sql.replace("'", "\\'");
	}
%>
<%
	request.setCharacterEncoding("UTF-8");

		
		
		String action = request.getParameter("action");
		String del = request.getParameter("del");
		String headder = request.getParameter("headder");
		
		String username = null;
        Cookie cookies[]=request.getCookies();
        if(cookies!=null) {
        	for(Cookie c:cookies) {
        		if(c.getName().equals("user")) {
        			username=c.getValue();
        		}
        	}
        }
		
        String cartitems = "";
		
        Cookie cart[]=request.getCookies();
        if(cookies!=null) {
        	for(Cookie c:cookies) {
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

        
        
        //__________________________________________________________________________________________---
		if(del!=null)
		{
			
				String mycart = cartitems;
				String[] cookiesplit = mycart.split("/");
				String[] d = del.split("/");
				
				String vnewcart = "";
				
				for(int i=0;i<cookiesplit.length;i++){
					if(i==Integer.valueOf(d[1]))
					{
						vnewcart = vnewcart+"";
						//別做事
					}
					else{
						if(i==0){
							vnewcart = vnewcart+cookiesplit[i];
						}
						else{
							vnewcart = vnewcart+"/"+cookiesplit[i];
						}
						
						}
				}
				
				Cookie newcookie = new Cookie("cart",vnewcart);
				newcookie.setMaxAge(30*24*3600);
				response.addCookie(newcookie);

				
				response.sendRedirect(headder+".jsp");

			return;
		}
		 //__________________________________________________________________________________________---
		else if("add".equals(action))
		{
			
			
	        
	        String ino = request.getParameter("ItemNo");
	        Cookie newcookie = new Cookie("cart",cartitems+ino);
	        newcookie.setMaxAge(30*24*3600);
	        response.addCookie(newcookie);
	        
		request.getRequestDispatcher(headder+".html").forward(request, response);
		return;
	}
		 //__________________________________________________________________________________________---
		else if("smb".equals(action))
		{
			if(cartitems.length()<=1)
			{
				// 購物車是空的
			}
			else{
			request.setCharacterEncoding("utf-8");
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String url="jdbc:mysql://localhost:3306/maxim1";
			String user="admin1";
			String password="admin1";
			
			int result = 0;

			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,user,password);
			
			stmt = conn.createStatement();
			

			
			// CartItem 處理
			
			HashSet<String> hs = new HashSet<String>();
			int itemcount=0;
			
			String[] itmesid = cartitems.replace(" ", "").split("/");
			for(String s: itmesid){hs.add(s);}
			String[] hsa = hs.toString().replace(" ", "").replace("[", "").replace("]", "").split(","); //項
			
			
			ArrayList<Integer> hsarrat = new ArrayList<>();           
			ArrayList<Integer> itemcountarray = new ArrayList<>();
			
			for(String s: hsa){
				if(s.length()>=1){
				hsarrat.add(Integer.valueOf(s));}}
			
			for(int i =0;i<hsa.length;i++)
			{
				for(String itm : itmesid)
				{
					if(hsa[i].equals(itm))
					{
					itemcount++;
					}
				}
				itemcountarray.add(i,itemcount);
				
				itemcount=0;
			}
			
			for(int i = 0;i<5;i++){
				hsarrat.add(0);
				itemcountarray.add(0);
			}
			
			//  price count 
			
			int pricetotal=0;
			
			String mycart = cartitems;
			String[] fff = mycart.split("/");
			
			int i=0;
			for(String f : fff){
				if(i!=0){
        				
				ResultSet trs = stmt.executeQuery("select * from inventory where id='"+f+"'");
				
				while(trs.next()){
					
					int pricet = Integer.valueOf(trs.getString("price"));
					pricetotal +=pricet;
					
				}
				}
				
				i++;
			}
				
				
			//  Date - Done
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			Date current = new Date();
			String DateEdit = sdf.format(current);
	        Date dt = sdf.parse(DateEdit);
	        
	        Calendar rightnow=Calendar.getInstance();
			rightnow.setTime(dt);
			rightnow.add(Calendar.MONTH, 1);
	       
			DateEdit = sdf.format(rightnow.getTime());
			
			//  Run Sql


			result = stmt.executeUpdate
					(		
					"INSERT INTO `orderlist`"+
					" (`OrderID`, `OrderUser`, `OrderCreatTime`, `OrderPaied`, `Orderduedate`, `price`)"+
					" VALUES (NULL, '"+username+"', current_timestamp(), 'N', '"+DateEdit+"', '"+pricetotal+"');"
					);
			
			

			rs = stmt.executeQuery
					(							
					"SELECT * FROM `orderlist` WHERE `OrderUser` LIKE '"+username+"'"	
					);
			
			//work!!<
			int mysqlid=0;
			
			while(rs.next()){
				mysqlid=rs.getInt("OrderID");
			}
			//work!!>
	
			result = stmt.executeUpdate
					(
							
					"INSERT INTO `ordermodel` "+
			
			"(`id`, `name`, `itemidno1`, `i1count`, `itemidno2`, `i2count`,"+
				  " `itemidno3`, `i3count`, `itemidno4`, `i4count`,"+
				  " `itemidno5`, `i5count`) "+
				  
				  "VALUES ('"+mysqlid+"', '"+username+"', '"+hsarrat.get(0)+"', '"+itemcountarray.get(1)+"', '"+hsarrat.get(1)+
						"', '"+itemcountarray.get(2)+"', '"+hsarrat.get(2)+"', '"+itemcountarray.get(3)+"', '"+hsarrat.get(3)+
						"', '"+itemcountarray.get(4)+"', '"+hsarrat.get(4)+"', '"+itemcountarray.get(5)+"');");
						
					
				
		
			//  Cookie Set - Done
			
			
			Cookie newcookie = new Cookie("cart","");
			newcookie.setMaxAge(30*24*3600);
	        response.addCookie(newcookie);
			
			
			
			
			// 關閉 sql
				rs.close();

				stmt.close();

				conn.close();
				
				
				response.sendRedirect("checkbye.html");
		}
		
}

%>

	</body>
</html>


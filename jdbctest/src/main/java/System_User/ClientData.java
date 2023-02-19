package System_User;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ClientData
 */
@WebServlet("/ClientData")
public class ClientData extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String ino = request.getParameter("ItemNo");
		
		String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
		String DB_URL = "jdbc:mysql://localhost:3306/maxim1";
	    //_________________________________________________________________________________________________________
		
		String USER = "admin1";
		String PASS = "admin1";
	    


			  	Connection conn = null;
		        Statement stmt = null;
		        
			try {
				
		        Class.forName(JDBC_DRIVER);
		        
		        conn=DriverManager.getConnection(DB_URL,USER,PASS);
		        
		        System.out.println(conn);
		       
		        stmt=conn.createStatement();

		        String username = null;
		        Cookie cookies[]=request.getCookies();
		        if(cookies!=null) {
		        	for(Cookie c:cookies) {
		        		if(c.getName().equals("user")) {
		        			username=c.getValue();
		        		}
		        	}
		        }
		        
		        String sql = "UPDATE `signup` SET `cart` = '"+ino+"' WHERE `signup`.`userset` = '"+username+"';";
		        
		        ResultSet rs = stmt.executeQuery(sql);
		        
		     // 展开结果集数据库
		       
		        conn.close();
		        response.sendRedirect("finnala-details.html");

		}catch(Exception e){
	     
	        e.printStackTrace();
	    
			
	    }
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
	
	public String forSQL(String sql){
		return sql.replace("'", "\\'");
	}
}

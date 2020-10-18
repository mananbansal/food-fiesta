package icsd;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class RestMenuServlet
 */
@WebServlet("/RestMenuServlet")
public class RestMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String strRestId=request.getParameter("rid");
		String strMenuId=request.getParameter("mid");
		String strMid=request.getParameter("txtMid");
		String strMenuName=request.getParameter("txtName");
		String strMenuDesc=request.getParameter("txtDesc");
		String strMenuClass=request.getParameter("txtClass");
		String strMenuPrice=request.getParameter("txtPrice");
		System.out.println(strMid);
		
		if(strRestId==null)  //for  delete
		{
			try
			{
				OracleDataSource ods= new OracleDataSource();
				ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
				con= ods.getConnection("manan","icsd");
				
				stmt= con.prepareStatement("delete from menu where mid=?");
				stmt.setString(1, strMenuId);
				stmt.executeUpdate();
				response.sendRedirect(request.getContextPath()+"/RestMenu.jsp#pills-tab");
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
			
		}
			
		
		
		else if(strRestId!=null)   // for update
		{
			try
			{
			
				OracleDataSource ods= new OracleDataSource();
				ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
				con= ods.getConnection("manan","icsd");
				
				stmt= con.prepareStatement("update menu set mname=?,mdesc=?,mclass=?,mprice=? where mid=?");
				stmt.setString(1, strMenuName);
				stmt.setString(2, strMenuDesc);
				stmt.setString(3, strMenuClass);
				stmt.setString(4, strMenuPrice);
				stmt.setString(5, strMid);
				stmt.executeUpdate();
				
				response.sendRedirect(request.getContextPath()+"/RestMenu.jsp#pills-tab");
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

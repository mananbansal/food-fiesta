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
 * Servlet implementation class RestSignupServlet
 */
@WebServlet("/RestSignupServlet")
public class RestSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
	int intRid=0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestSignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	
		
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");

			stmt= con.prepareStatement("select max(rid) as id from restregistration");
			
			rset=stmt.executeQuery();
			if(rset.next())
			{
				intRid=rset.getInt("id");
				intRid= intRid + 1000;
			}
			
			con.close();
			stmt.close();
			rset.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");

			stmt= con.prepareStatement("insert into restregistration values(?,?,?,?,?,?,?,?,?)");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
				String strRestName=request.getParameter("txtRname");
				String strRestAdd=request.getParameter("txtAdd");
				String strRestArea=request.getParameter("txtArea");
				String strRestDesc=request.getParameter("txtDesc");
				String strName=request.getParameter("txtName");
				String strNumber=request.getParameter("txtNo");
				String strEmail=request.getParameter("txtEmail");
				String strPassword=request.getParameter("txtPwd");


		
		try
		{
				stmt.setInt(1, intRid);
				stmt.setString(2, strRestName);
				stmt.setString(3, strRestAdd);
				stmt.setString(4, strRestArea);
				stmt.setString(5, strRestDesc);
				stmt.setString(6, strName);
				stmt.setString(7, strNumber);
				stmt.setString(8, strEmail);
				stmt.setString(9, strPassword);
				stmt.executeUpdate();
		
				response.sendRedirect(request.getContextPath()+"/RestLogin.jsp?mail=");
		
	
		
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}

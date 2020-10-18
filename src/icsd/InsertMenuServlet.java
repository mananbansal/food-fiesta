package icsd;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class InsertMenuServlet
 */
@WebServlet("/InsertMenuServlet")
public class InsertMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
	String strMenuId;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String strRestId=(String)session.getAttribute("rid");
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");

			stmt= con.prepareStatement("select max(mid) as id from menu where rid=?");
			stmt.setString(1, strRestId);
			
			rset=stmt.executeQuery();
			if(rset.next())
			{
				int Id=Integer.parseInt(rset.getString("id"));
				strMenuId= Integer.toString(Id + 1);
			}
			
			con.close();
			stmt.close();
			rset.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String strMenuType=request.getParameter("txtType");
		String strMenuName=request.getParameter("txtName");
		String strMenuDesc=request.getParameter("txtDesc");
		String strMenuClass=request.getParameter("txtClass");
		String strMenuPrice=request.getParameter("txtPrice");
		String strMenuImg=null;
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");
			
			stmt= con.prepareStatement("insert into menu values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, strRestId );
			stmt.setString(2, strMenuId );
			stmt.setString(3, strMenuType );
			stmt.setString(4, strMenuName );
			stmt.setString(5, strMenuDesc );
			stmt.setString(6, strMenuClass );
			stmt.setString(7, strMenuPrice );
			stmt.setString(8, strMenuImg );
			stmt.executeUpdate();
			con.close();
			stmt.close();
			rset.close();
			response.sendRedirect(request.getContextPath()+"/RestMenu.jsp#pills-tab");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	
		
		
	}

}

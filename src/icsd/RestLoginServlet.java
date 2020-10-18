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
 * Servlet implementation class RestLoginServlet
 */
@WebServlet("/RestLoginServlet")
public class RestLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");
			System.out.println("con Established in Auth");
			stmt= con.prepareStatement("select * from restregistration where email=? and password=?");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		try
		{
			if(con!=null)
			{
				con.close();
			}
			if(stmt!=null)
			{
				stmt.close();
			}
			if(rset!=null)
			{
				rset.close();
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
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
		
		
		String strUnm,strPwd;
		strUnm= request.getParameter("txtEmail");
		strPwd= request.getParameter("txtPwd");
		try
		{
		stmt.setString(1, strUnm);
		stmt.setString(2, strPwd);
		rset=stmt.executeQuery();
		if(rset.next())
		{
			String strRid=rset.getString("rid");
			HttpSession session = request.getSession();
			session.setAttribute("rid",strRid);
			session.setAttribute("Email",strUnm);
			response.sendRedirect(request.getContextPath()+"/RestIndex.jsp");
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/RestSignupPage.jsp");
		}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}

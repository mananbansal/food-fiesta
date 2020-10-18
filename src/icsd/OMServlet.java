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
 * Servlet implementation class OMServlet
 */
@WebServlet("/OMServlet")
public class OMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	Connection con1= null;
	PreparedStatement stmt1=null;
	Connection con2= null;
	PreparedStatement stmt2=null;
	ResultSet rset=null;
	
	String strRestid,strMenuName,strMenuPrice,strMenuImg,strMenuQty,strRestName, strUname,StrAdd,StrArea,StrZip,StrContact;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OMServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    
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
			
			if(con1!=null)
			{
				con1.close();
			}
			if(stmt1!=null)
			{
				stmt1.close();
			}
			if(con2!=null)
			{
				con2.close();
			}
			if(stmt2!=null)
			{
				stmt2.close();
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strBillNo=request.getParameter("billno");
		String strMenuId=request.getParameter("mid");
		System.out.println(strBillNo);
		System.out.println(strMenuId);
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");

			stmt= con.prepareStatement("select * FROM tblrestorder where billno=? and mid=?");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		try
		{
		stmt.setString(1, strBillNo);
		stmt.setString(2, strMenuId);
		rset=stmt.executeQuery();
		while(rset.next())
		{
			 strRestid=rset.getString("rid");
			 strMenuQty=rset.getString("mqty");
			 strMenuPrice=rset.getString("mprice");
			 strMenuImg=rset.getString("mimg");
			 strMenuName=rset.getString("mname");
			 strRestName=rset.getString("rname");
			 strUname=rset.getString("uname");
			 StrAdd=rset.getString("address");
			 StrArea=rset.getString("area");
			 StrZip=rset.getString("pin");
			 StrContact=rset.getString("contact");
			
			
			OracleDataSource ods1= new OracleDataSource();
			ods1.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con1= ods1.getConnection("manan","icsd");

			stmt1= con1.prepareStatement("insert into tblpreviousorder values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt1.setString(1, strBillNo);
			stmt1.setString(2, strUname);
			stmt1.setString(3, strRestid);
			stmt1.setString(4, strMenuId);
			stmt1.setString(5, strMenuName);
			stmt1.setString(6, strMenuPrice);
			stmt1.setString(7, strMenuQty);
			stmt1.setString(8, strMenuImg);	
			stmt1.setString(9, strRestName);
			stmt1.setString(10, StrAdd);
			stmt1.setString(11, StrArea);
			stmt1.setString(12, StrZip);
			stmt1.setString(13, StrContact);
			stmt1.executeUpdate();
			
			
	}
}
		catch(SQLException e)
{
	e.printStackTrace();
}
		
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con2= ods.getConnection("manan","icsd");

			stmt2= con2.prepareStatement("delete FROM tblrestorder where billno=? and mid=?");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		try
		{
		stmt2.setString(1, strBillNo);
		stmt2.setString(2, strMenuId);
		stmt2.executeUpdate();
	
			response.sendRedirect(request.getContextPath()+"/Orders.jsp");
		
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
	}
}

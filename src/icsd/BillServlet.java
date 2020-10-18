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
 * Servlet implementation class BillServlet
 */
@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con= null;
	PreparedStatement stmt=null;
	Connection con1= null;
	PreparedStatement stmt1=null;
	Connection con2= null;
	PreparedStatement stmt2=null;
	Connection con3= null;
	PreparedStatement stmt3=null;
	ResultSet rset=null;
	String strMenuid,strRestid,strMenuName,strMenuPrice,strMenuImg,strMenuQty,strRestName;
	 int  strBillNo=0;
	 
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillServlet() {
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
			if(con3!=null)
			{
				con3.close();
			}
			if(stmt3!=null)
			{
				stmt3.close();
			}
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String StrAdd=request.getParameter("txtAddress");
		String StrArea=request.getParameter("txtArea");
		String StrZip=request.getParameter("txtZip");
		String StrContact=request.getParameter("txtContact");
		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con= ods.getConnection("manan","icsd");

			stmt= con.prepareStatement("select max(billno) as id from tblorder");
			
			rset=stmt.executeQuery();
			if(rset.next())
			{
				strBillNo=rset.getInt("id");
				strBillNo= strBillNo + 1;
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

			stmt= con.prepareStatement("select * FROM mycart where uname=?");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String strUnm=(String) session.getAttribute("unm");
		try
		{
		stmt.setString(1, strUnm);
		rset=stmt.executeQuery();
		while(rset.next())
		{
			 strMenuid=rset.getString("mid");
			 strRestid=rset.getString("rid");
			 strMenuQty=rset.getString("mqty");
			 strMenuPrice=rset.getString("mprice");
			 strMenuImg=rset.getString("mimg");
			 strMenuName=rset.getString("mname");
			 strRestName=rset.getString("rname");
			
			
			OracleDataSource ods1= new OracleDataSource();
			ods1.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con1= ods1.getConnection("manan","icsd");

			stmt1= con1.prepareStatement("insert into tblorder values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt1.setInt(1, strBillNo);
			stmt1.setString(2, strUnm);
			stmt1.setString(3, strRestid);
			stmt1.setString(4, strMenuid);
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
			
			
			
			
			OracleDataSource ods2= new OracleDataSource();
			ods2.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con2= ods2.getConnection("manan","icsd");

			stmt2= con2.prepareStatement("insert into tblrestorder values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt2.setString(1, Integer.toString(strBillNo));
			stmt2.setString(2, strUnm);
			stmt2.setString(3, strRestid);
			stmt2.setString(4, strMenuid);
			stmt2.setString(5, strMenuName);
			stmt2.setString(6, strMenuPrice);
			stmt2.setString(7, strMenuQty);
			stmt2.setString(8, strMenuImg);	
			stmt2.setString(9, strRestName);
			stmt2.setString(10, StrAdd);
			stmt2.setString(11, StrArea);
			stmt2.setString(12, StrZip);
			stmt2.setString(13, StrContact);
			stmt2.executeUpdate();
			
			
		}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
		

		try
		{
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con3= ods.getConnection("manan","icsd");

			stmt3= con3.prepareStatement("delete FROM mycart where uname=?");
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		try
		{
		stmt3.setString(1, strUnm);
		stmt3.executeUpdate();
	
			response.sendRedirect(request.getContextPath()+"/BillPage.jsp?billno="+strBillNo);
		
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
	}

}

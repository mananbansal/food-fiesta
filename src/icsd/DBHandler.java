package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

//import javax.servlet.http.HttpSession;

//import jdk.nashorn.internal.ir.RuntimeNode.Request;
//import net.ucanaccess.jdbc.Session;
import oracle.jdbc.pool.OracleDataSource;

public class DBHandler {

	public Connection getDBcon()
	{
		Connection con=null;
		try {
			OracleDataSource ods=new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con=ods.getConnection("manan","icsd");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return con;
	}
	
	public LinkedList<Comp> getCompanytable()
	{
		LinkedList<Comp> lst= new LinkedList<>();
		Connection con=getDBcon();
		try {
			PreparedStatement stmt =con.prepareStatement("select * from restaurant");
			ResultSet rset=stmt.executeQuery();
			
			
			while(rset.next())
			{
				String strRestId=rset.getString("rid");
				String strRestName=rset.getString("rname");
				String strRestDesc=rset.getString("rdesc");
				String strRestImg=rset.getString("rlogo");
				
				Comp c1= new Comp(strRestId,strRestName,strRestDesc,strRestImg);
				lst.add(c1);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public LinkedList<Prod> getProductTable(String strRestid)
	{
         
		LinkedList<Prod> lst=new LinkedList<>();
		Connection con=getDBcon();
		try {
			PreparedStatement stmt =con.prepareStatement("select * from menu1 where rid=?");
			stmt.setString(1, strRestid);
			ResultSet rset=stmt.executeQuery();
			
			while(rset.next())
			{
				String strMenuId=rset.getString("mid");
				String strMenuNm=rset.getString("mname");
				String strMenuDesc=rset.getString("mdesc");
				String strMenuPrice=rset.getString("price");
				String strMenuImg=rset.getString("pimg");
				
				Prod p1=new Prod(strRestid,strMenuId,strMenuNm,strMenuDesc,strMenuPrice,strMenuImg);
				lst.add(p1);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public Cart getCartitem(String strMenuid)
	
	{
		Cart c=null;
		Connection con=getDBcon();
		try {
			PreparedStatement stmt =con.prepareStatement("select * from menu where mid=?");
			stmt.setString(1,strMenuid);
			ResultSet rset=stmt.executeQuery();
			
			if(rset.next())
			{
				String strRestId=rset.getString("rid");
				String strMenuId=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				
				String strMenuPrice=rset.getString("mprice");
				String strMenuimg=rset.getString("mimg");
				
		 c=new Cart(strRestId,strMenuId,strMenuName,strMenuimg,strMenuPrice);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
return c;
	
	}
	
	
	
	public void InsertIntoCart(String strunm,Cart c,String strMenuQty,String strRestName)
	{
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into mycart values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, strunm);
			stmt.setString(2, c.getStrRestId());
			stmt.setString(3, c.getStrMenuId());
			stmt.setString(4, c.getStrMenuName());
			stmt.setString(5, c.getStrMenuPrice());
			stmt.setString(6, strMenuQty);
			stmt.setString(7, c.getStrMenuimg());
			stmt.setString(8, strRestName);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public LinkedList<getCart> getTableCart(String strunm)
	{ 
		LinkedList<getCart> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from mycart where uname=?");
			stmt.setString(1, strunm);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strUnm=rset.getString("uname");
				String strRestId=rset.getString("rid");
				String strMenuid=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				String strMenuQty=rset.getString("mqty");
				String strMenuPrice=rset.getString("mprice");
				String strMenuImg=rset.getString("mimg");
				String strRestName=rset.getString("rname");
				getCart gC1=new getCart(strUnm,strRestId,strMenuid,strMenuName,strMenuQty,strMenuImg,strMenuPrice,strRestName);
				lst.add(gC1);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	
	public LinkedList<getOrders> getTableOrder(int strBillNo)
	{ 
		LinkedList<getOrders> lst=new LinkedList<>();
		Connection con =getDBcon();
		
		try {
			PreparedStatement stmt=con.prepareStatement("select * from tblorder where billno=?");
			stmt.setInt(1,strBillNo);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strUnm=rset.getString("uname");
				String strRestId=rset.getString("rid");
				String strMenuid=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				String strMenuPrice=rset.getString("mprice");
				String strMenuQty=rset.getString("mqty");
				String strMenuImg=rset.getString("mimg");
				String strRestName=rset.getString("rname");
				String strAddress=rset.getString("address");
				String strArea=rset.getString("area");
				String strZip=rset.getString("pin");
				String strContact=rset.getString("contact");
				
				
				
				getOrders GO1=new getOrders(strUnm,strRestId,strMenuid,strMenuName,strMenuImg,strRestName,strAddress,strArea,strZip,strContact,Integer.parseInt(strMenuPrice),Integer.parseInt(strMenuQty));
				lst.add(GO1);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	
	public LinkedList<getMenuType> getTableMenuType(String strRestId)
	{ 
		LinkedList<getMenuType> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from menutype where rid=?");
			stmt.setString(1, strRestId);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strMenuType=rset.getString("mtype");
				String strMenuTypeName=rset.getString("mtypename");
				
				getMenuType mt=new getMenuType(strMenuType,strMenuTypeName);
				lst.add(mt);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	
	

	public LinkedList<getMenu> getTableMenu(String strRestId, String strMenuType)
	{ 
		LinkedList<getMenu> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from menu where rid=? and mtype=?");
			stmt.setString(1, strRestId);
			stmt.setString(2, strMenuType);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				
				String strMenuId=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				String strMenuClass=rset.getString("mclass");
				String strMenuPrice=rset.getString("mprice");
				String strMenuImg=rset.getString("mimg");
				String strMenuDesc=rset.getString("mdesc");
				
				
				getMenu gm=new getMenu(strMenuId,strMenuName,strMenuClass,strMenuPrice,strMenuImg,strMenuDesc);
				lst.add(gm);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	
	
	public LinkedList<getRestOrders> getTableRestOrders(String strRestId)
	{ 
		LinkedList<getRestOrders> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from tblrestorder where rid=?");
			stmt.setString(1, strRestId);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strBillNo=rset.getString("billno");
				String strUName=rset.getString("uname");
				String strMenuId=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				String strQty=rset.getString("mqty");
				String strMenuPrice=rset.getString("mprice");
				
				
				
				getRestOrders ro=new getRestOrders(strMenuId,strMenuName,strBillNo,strMenuPrice,strUName,strQty);
				lst.add(ro);
		
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public LinkedList<getPreviousOrders> getTablePreviousOrders(String strRestId)
	{ 
		LinkedList<getPreviousOrders> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from tblpreviousorder where rid=?");
			stmt.setString(1, strRestId);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strBillNo=rset.getString("billno");
				String strUName=rset.getString("uname");
				String strMenuId=rset.getString("mid");
				String strMenuName=rset.getString("mname");
				String strQty=rset.getString("mqty");
				String strMenuPrice=rset.getString("mprice");
				
				
				
				getPreviousOrders po=new getPreviousOrders(strMenuId,strMenuName,strBillNo,strMenuPrice,strUName,strQty);
				lst.add(po);
		
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	
	
	
	
	public LinkedList<getList> getTableList(String strMenuId)
	{ 
		LinkedList<getList> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from menu where mid=?");
			stmt.setString(1, strMenuId);
			ResultSet rset= stmt.executeQuery();
			while(rset.next())
			{
				String strMenuType=rset.getString("mtype");
				String strMenuName=rset.getString("mname");
				String strMenuDesc=rset.getString("mdesc");
				String strMenuclass=rset.getString("mclass");
				String strMenuPrice=rset.getString("mprice");
				
				getList ml=new getList(strMenuName,strMenuDesc,strMenuclass,strMenuPrice,strMenuType);
				lst.add(ml);
		
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public LinkedList<Rest> getRestDetails(String strRestid)
	{ 
		LinkedList<Rest> lst=new LinkedList<>();
		Connection con =getDBcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from restaurant where rid=?");
			stmt.setString(1, strRestid);
			ResultSet rset= stmt.executeQuery();
			if(rset.next())
			{
				
				String strRestName=rset.getString("rname");
				String strRestDesc=rset.getString("rdesc");
				
				
				Rest r=new Rest(strRestName,strRestDesc);
				lst.add(r);
		
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
}
	
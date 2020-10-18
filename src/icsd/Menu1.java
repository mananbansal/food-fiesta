package icsd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Menu1
 */
@WebServlet("/Menu1")
public class Menu1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menu1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strRestid=request.getParameter("rid");
		String strMenuid=request.getParameter("mid");
		String strMenuQty=request.getParameter("qty");
		String strRestName=request.getParameter("rname");
		HttpSession session =request.getSession(false);
	 String strunm=(String)session.getAttribute("unm");

		
		DBHandler objDh=new DBHandler();
	//	if(strMenuid!=null)
	//	{
			Cart c=objDh.getCartitem(strMenuid);
			objDh.InsertIntoCart(strunm,c,strMenuQty,strRestName);
	//  }
				
		response.sendRedirect(request.getContextPath()+"/Menu.jsp?rid="+strRestid+"#menu-list");

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

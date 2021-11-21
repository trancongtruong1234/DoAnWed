package controller;
import dao.DaoLogin;
import entity.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().append("Served at: ").append(req.getContextPath());
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
		resp.setContentType("text/html;charset=UTF-8");
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		try {
			DaoLogin dao = new DaoLogin();
			Member member = dao.checkLogin(email, password);
			String username = member.getUserName();
			int id = member.getId();
			if(member != null)
			{
				HttpSession session = req.getSession();
				session.setAttribute("id", id);
				session.setAttribute("em", email);
				session.setAttribute("pwd", password);
				session.setAttribute("us", username);
				resp.sendRedirect("home.jsp");
			}
			else 
			{
				
				resp.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}

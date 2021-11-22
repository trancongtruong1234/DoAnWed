package controller;
import dao.DaoLogin;
import entity.ListSession;
import entity.Member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.RepaintManager;
import javax.swing.text.Document;

import org.apache.tiles.request.Request;
import org.springframework.web.bind.annotation.ResponseBody;

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
			if(member != null)
			{
				int id = member.getId();
				String username = member.getUserName();
				
				HttpSession session = req.getSession();
				session.setAttribute("id", id);
				session.setAttribute("em", email);
				session.setAttribute("pwd", password);
				session.setAttribute("us", username);
				System.out.println(session.getAttribute("id"));
				/*
				 * ListSession arrayList = new ListSession(); arrayList.setSession(session);
				 * System.out.println(arrayList.getSession(0).getAttribute("id"));
				 */
				
				if(session.isNew()) {
				resp.sendRedirect("home.jsp");
				}
				else{
				resp.sendRedirect("viewContent.tiles");
				}
			}
			else resp.sendRedirect("login.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}

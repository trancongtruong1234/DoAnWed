package controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoViewContent;
import entity.Content;
import dao.DaoViewContent;

/**
 * Servlet implementation class ViewController
 */
@WebServlet(urlPatterns = {"/viewContent"})
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// get data từ dao
				String indexPage = request.getParameter("index");
				if (indexPage== null) {
					indexPage="1";
				}
				int index = Integer.parseInt(indexPage);
				DaoViewContent dao = new DaoViewContent();
				/* List<Content> list=dao.getdata(); */
				//b2 set data cho jsp
				/* request.setAttribute("listp", list); */
				int count = dao.getCount();
				int endpage = count/10;
				/* System.out.print(endpage); */
				if (count %10 !=0) {
					endpage++;
				}
				request.setAttribute("endp", endpage);
				List<Content> listPage = dao.pagingContent(index);
				request.setAttribute("listA", listPage);
				request.getRequestDispatcher("viewContent.tiles").forward(request, response);
				/*
				 * System.out.print(count); System.out.print(endpage);
				 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}

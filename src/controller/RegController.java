package controller;

import java.io.IOException;
import java.util.List;

import vo.*;
import dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class RegController
 */
@WebServlet("/RegController")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void addbook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title=request.getParameter("Title");
		String author=request.getParameter("Author");
		String edition=request.getParameter("Edition");
		String stream=request.getParameter("Stream");
		String iSBN=request.getParameter("ISBN");
		String publication=request.getParameter("Publication");
		String price=request.getParameter("price");
		BookVo b=new BookVo();
		b.setAuthor(author);
		b.setEdition(edition);
		b.setiSBN(iSBN);
		b.setPublication(publication);
		b.setStream(stream);
		b.setTitle(title);
		b.setPrice(Integer.parseInt(price));
		RegDao d=new RegDao();
		d.add_book_details(b);
	}

	protected void search_user_details(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String un_login=request.getParameter("un_login");
		String pass_login=request.getParameter("pass_login");
		RegDao d=new RegDao();
		List<SignupVo> l=d.verify_details(un_login,pass_login);
		
		if(l.size()==0)
		{
			String error="error";
			HttpSession s=request.getSession();
			s.setAttribute("err", error);
			response.sendRedirect("front.jsp");
		}
		else if(l.size()==1)
		{
			
			response.sendRedirect("home.jsp");

		}
		//System.out.println(l.size());
	}

	
	protected void add_data_for_signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fn=request.getParameter("fn");
		String ln=request.getParameter("ln");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String un_sign=request.getParameter("un_sign");
		String pass_sign=request.getParameter("pass_sign");
		
		
		SignupVo signup_v=new SignupVo();
		signup_v.setEmail(email);
		signup_v.setFn(fn);
		signup_v.setLn(ln);
		signup_v.setPhone(Long.parseLong(phone));
		signup_v.setPass_sign(pass_sign);
		signup_v.setUn_sign(un_sign);
		
		RegDao d=new RegDao();
		d.add_data_for_signup(signup_v);
		
		}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String key=request.getParameter("key");
		if(key.equals("add_data_signup"))
		{
			add_data_for_signup(request,response);
			response.sendRedirect("front.jsp");
		}
		else if(key.equals("verify_login_details"))
		{
			search_user_details(request,response);
			//response.sendRedirect("verify.jsp");
		}
		else if(key.equals("addbook"))
		{
			addbook(request,response);
			response.sendRedirect("home.jsp");
		}
	}

}

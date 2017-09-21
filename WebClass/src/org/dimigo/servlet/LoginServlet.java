package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
	      response.setContentType("application/json;charset=utf-8");
	      PrintWriter out = response.getWriter();
	      request.setCharacterEncoding("utf-8");
	      String id = request.getParameter("id");
	      String pw = request.getParameter("pw");
	      System.out.printf("id : %s, pwd : %s\n",id,pw);
	      
//	      {
//	         "id" : "test"
////	      }
//	      out.println("{");
//	      out.println("\"id\" : "+"\""+id+"\"");
//	      out.println("}");
	      //JSON simple library 사용
//	      JSONObject json = new JSONObject();
//	      json.put("id", id);
//	      out.write(json.toJSONString());
//	      System.out.println(json.toJSONString());
	      Gson gson = new Gson();
	      JsonObject json = new JsonObject();
	      json.addProperty("id",id);
	      String j = gson.toJson(json);
	      System.out.println(j);
	      out.write(j);
	      out.close();
	      
	   }
}

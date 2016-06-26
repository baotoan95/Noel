package com.baotoan.noel;

import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GenerateHTML
 */
public class GenerateHTML extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GenerateHTML() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String id = request.getParameter("i");
		if (null == id) {
			response.sendRedirect("happy.html");
		} else {
			Map<String, Object> result = DBUtils.get(id);
			try {
				request.setAttribute("content", result.get("content"));
				request.setAttribute("ms_link", result.get("ms_link"));
				request.setAttribute("font_size", result.get("font_size"));
				request.getRequestDispatcher("happy.jsp").forward(request,
						response);
			} catch (Exception e) {
				response.sendRedirect("happy.html");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String content = request.getParameter("content");
		String ms_link = request.getParameter("ms_link");
		int font_size = 12;
		try {
			font_size = Integer.parseInt(request.getParameter("font_size"));
		} catch (Exception e) {}
		
		if (null != ms_link) {
			ms_link = ms_link.trim();
		}
		
		String code = generate(20);
		DBUtils.registry(id, content, ms_link, code, font_size);
		response.sendRedirect("happy?i=" + code);
	}

	private String generate(int length) {
		String result = "";
		while (result.length() <= length) {
			Random rand = new Random();
			int numb = rand.nextInt(113);
			if (numb >= 48 && numb <= 57 || numb >= 64 && numb <= 90
					|| numb >= 97 && numb <= 112) {
				result += (char) numb;
			}
		}
		return result;
	}

}

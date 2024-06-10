package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class TemplateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TemplateController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 어떤 페이지에서 요청이 왔는지 확인
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		System.out.println(command);
		// 응답 페이지
		String page = "/template.jsp";
		boolean isRedirect = false;
		// isRedirect를 주고 안주고의 차이 :

		// 내용부 페이지
		String group = "";
		String content = "";
		String script = "";
		// 메인 페이지 이동.

		content = command.substring(0, command.length() - 3) + ".jsp";
		group = command.split("_")[0];

		request.setAttribute("content", content);
		request.setAttribute("group", group);
		request.setAttribute("script", script);

		// 페이지 이동
		if (isRedirect) {
			response.sendRedirect(page);
			// 얘는 데이터 안가져간다.
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
			dispatcher.forward(request, response);
		}

	}

}
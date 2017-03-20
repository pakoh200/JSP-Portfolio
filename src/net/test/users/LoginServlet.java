package net.test.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet {
	public static final String SESSION_USER_ID = "userId";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter(SESSION_USER_ID);
		String password = req.getParameter("password");
		
		try {
			User.login(userId, password);
			HttpSession session = req.getSession();
			session.setAttribute(SESSION_USER_ID, userId);
			resp.sendRedirect("/");
		} catch (UserNotFoundException e) {
			forwardJSP(req, resp, "�������� �ʴ� ���̵��Դϴ�. �ٽ� �α����ϼ���.");
		} catch (PasswordMisMatchException e) {
			forwardJSP(req, resp, "��й�ȣ�� Ʋ���ϴ�. �ٽ� �α����ϼ���.");
		}
	}

	private void forwardJSP(HttpServletRequest req, HttpServletResponse resp, String errorMessage) throws ServletException, IOException {
		req.setAttribute("errorMessage", errorMessage);
		RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
		rd.forward(req, resp);
	}
}

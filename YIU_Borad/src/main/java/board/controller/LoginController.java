package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.boardService;

public class LoginController implements Controller{

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String path = "";
		
		boardService s = boardService.getInstance();
		boolean result = s.login(id, pwd);
		
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		
		HttpUtil.forward(request, response, "/index2.jsp");
		
		
		
	}

}

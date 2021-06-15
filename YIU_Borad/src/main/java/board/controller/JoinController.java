package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;
import board.vo.boradVO;

public class JoinController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String dip = request.getParameter("dip");
		
		
		boradVO join = new boradVO(id,pwd,name,dip);
		
		boardService s = boardService.getInstance();
		s.join(join);
		
		HttpUtil.forward(request, response, "/index.jsp");
	}

}

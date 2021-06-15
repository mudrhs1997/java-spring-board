package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;
import board.vo.boradVO;

public class WriteController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String memo = request.getParameter("memo");
		
		boradVO write = new boradVO(name,title,memo);
		
		
		boardService s = boardService.getInstance();
		s.write(write);
		
		HttpUtil.forward(request, response, "/board.do");
	}

}

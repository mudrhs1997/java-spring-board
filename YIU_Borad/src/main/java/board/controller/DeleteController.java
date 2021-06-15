package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;

public class DeleteController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		int num = Integer.parseInt(request.getParameter("num"));
		
		boardService s = boardService.getInstance();
		s.delete(num);
		
		HttpUtil.forward(request, response, "/board.do");
	}

}

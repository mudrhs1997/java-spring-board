package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;

public class UpdateController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		String rememo = request.getParameter("memo");
		String retitle = request.getParameter("title");
		
		
		boardService s = boardService.getInstance();
		s.update(retitle,rememo,num);
		
		HttpUtil.forward(request, response, "/view.do?num="+num+"");
	}

}

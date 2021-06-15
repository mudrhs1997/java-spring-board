package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;
import board.vo.boradVO;

public class ViewController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		
		boardService s = boardService.getInstance();
		ArrayList<boradVO> view = s.view(num);
		
		
		request.setAttribute("view",view);
		HttpUtil.forward(request, response, "/view.jsp");
	}

}

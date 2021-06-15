package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.boardService;
import board.vo.boradVO;

public class MypageController implements Controller {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = (String)request.getSession().getAttribute("id");
		
		boardService s = boardService.getInstance();
		ArrayList<boradVO> user = s.mypage(id);
		
		request.setAttribute("user",user);
		HttpUtil.forward(request, response, "/mypage.jsp");
	}

}

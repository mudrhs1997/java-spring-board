package board.service;

import java.util.ArrayList;

import board.dao.boardDAO;
import board.vo.boradVO;

public class boardService {
	private static boardService service = new boardService();
	private boardService() {} ;
	private static boardDAO dao = boardDAO.getInstance();
	public static boardService getInstance()
	{
		return service;
	}
	
	public boolean login(String id, String pwd) {
		return dao.login(id, pwd);
	}
	
	public ArrayList<boradVO> mypage(String id) {
		return dao.mypage(id);
	}
	public void join(boradVO join) {
		dao.join(join);
	}
	
	public ArrayList<boradVO> list() {
		return dao.list();
	}

	public void write(boradVO write) {
		dao.write(write);
		
	}

	public ArrayList<boradVO> view(int num) {
		// TODO Auto-generated method stub
		return dao.view(num);
		
	}

	public void update(String title, String memo, int num) {
		// TODO Auto-generated method stub
		dao.update(title,memo,num);
	}

	public void delete(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}
}

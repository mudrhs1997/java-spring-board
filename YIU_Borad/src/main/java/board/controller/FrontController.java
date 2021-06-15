package board.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	HashMap<String, Controller> map = null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		map = new HashMap<String, Controller>();
		map.put("/login.do", new LoginController());
		map.put("/mypage.do", new MypageController());
		map.put("/join.do", new JoinController());
		map.put("/board.do", new ListController());
		map.put("/write.do", new WriteController());
		map.put("/view.do", new ViewController());
		map.put("/update.do", new UpdateController());
		map.put("/update_set.do", new Update_SetController());
		map.put("/delete.do", new DeleteController());
	}
	
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String path = uri.substring(contextPath.length());
		
		Controller cont = map.get(path);
		cont.run(req,resp);
		
	}
}

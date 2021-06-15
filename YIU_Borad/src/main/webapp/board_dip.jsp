<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="board.vo.boradVO"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>학과별 게시판</title>
<style>
table {
  width: 100%;
  border-top: 1px solid #444444;
  border-collapse: collapse;
  text-align: center;
}

th, td{
  border-bottom: 1px solid #444444;
  padding: 10px;
}
td a{
	color : black;
	text-decoration: none;
}
#button{
	float:right;
	margin:10px;
	}
</style>
</head>
<% ArrayList<boradVO> list = (ArrayList<boradVO>)request.getAttribute("list"); %>
<body>
	<div class="head">
		<header>
			<a href="login.do"><img src="images/logo.jpg" alt="logo"></a>
			<div class="login">
				<a href="index.jsp"> 로그아웃 </a>
				<a href="mypage.do"> 마이페이지 </a>
			</div>
		</header>
		<nav>
			<a href="board.do">학과별 게시판</a>
			<a href="deal.jsp">중고거래</a>
		</nav>
	</div>
<main>
		<table>
			<tr style="color:#9bd5e1; background-color:#00566f;"><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th></tr>
		<%  
			if(!list.isEmpty()){
			
				for(int i = 0 ; i < list.size(); i++){
					boradVO board = list.get(i); 
					%> <tr><td><%= board.getNum() %></td>
					<td style="width:55%;"><a href="view.do?num=<%= board.getNum() %>"><%= board.getTitle() %></td>
					<td><%= board.getName() %></td>
					<td><%= board.getTime() %></td>
					<td><%= board.getHit() %></td></tr>
					<% 
					
				}
			}
			
			%>
		</table>

	<a id="button"><input type="button" value="글쓰기" onClick="window.location='write.jsp'" ></a>
</main>
	<div class="footer">
		<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
	</div>
</body>
</html>
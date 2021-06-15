<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %> 
	<%@ page import="board.vo.boradVO" %> 
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>마이 페이지 </title>
<style>
.view{
		margin:100px 200px 100px 200px;
		
	}
	.title{
		width:20%;
		border:1px solid;
		border-color: black;
		background-color: #3e8297;
		font-weight: bold;
		color: white;
	}
</style>
</head>
<% ArrayList<boradVO> list = (ArrayList<boradVO>)request.getAttribute("user"); %>
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
			<a href="">중고거래</a>
		</nav>
	</div>
		
		<main>
		<div class="view">
		
			<table>
<% 
		boradVO user = list.get(0);

%>
				<caption style="font-size: 20px;font-weight: bold;padding:10px;">내 정보 </caption>
					<tbody style="border:1px solid;">
						<tr><td class="title">이름  </td> <td class="memo"><%= user.getName() %></td></tr>
						<tr><td class="title">학과   </td> <td class="memo"><%= user.getDip() %></td></tr>
					</tbody>
				</table>
		</div>
	
		</main>
		<div class="footer">
			<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
		s</div>

	
</body>
</html>
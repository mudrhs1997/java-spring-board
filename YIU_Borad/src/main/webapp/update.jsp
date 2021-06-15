<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="board.vo.boradVO" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>수정 페이지 </title>
<style>
	.view{
		border:1px solid;
		border-width: 1px 2px 1px 1px;
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
	.memo{
		text-align:left;
		padding:0px;
	}
	#input{
		width:100%;
		height:45px;
		box-sizing: border-box;
		-webkit-box-sizing:border-box;
		-moz-box-sizing: border-box;
		text-align:left;
	}
</style>
</head>
<% ArrayList<boradVO> list = (ArrayList<boradVO>)request.getAttribute("view");%>
<body>

<div class="head">
		<header>
			<img src="images/logo.jpg" alt="logo">
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
		<div class="view">
		<table>
<% 
		boradVO view = list.get(0);

%>
			<form action="update.do?num=<%=view.getNum() %>" method="post">
				<tr><td class="title">제목  </td> <td class="memo"><input type="text" id="input" name="title" value="<%=view.getTitle()%>" autofocus></td></tr>
				<tr><td class="title">이름  </td> <td class="memo"><%= view.getName()%><input type="hidden" name="name" value="name"></td></tr>
				<tr style="height:400px"><td class="title">내용  </td> <td class="memo"><input type="text" id="input" name="memo" value="<%=view.getMemo()%>"style="height:400px;"></td></tr>
			
				</table>
				</div>
				<input type="submit" value="수정" onclick="confirm('수정하시겠습니까?')">
			</form>
		
	</main>
	<div class="footer">
		<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
	</div>
</body>
</html>
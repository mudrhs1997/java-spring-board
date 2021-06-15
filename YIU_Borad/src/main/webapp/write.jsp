<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
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
			<a href="javascript:check();">학과별 게시판</a>
			<a href="javascript:check();">중고거래</a>
		</nav>
	</div>
	<div class="main">
		<main>
		<div class="view">
			<table style="rules:none;">
				<form action="write.do" method="post">
					<tr><td class="title">제목  </td> <td class="memo"><input id="input" type="text" name="title" required autofocus></td></tr>
					<tr><td class="title">이름  </td> <td class="memo"><input id="input" type="text" name="name" required></td></tr>
					<tr style="height:400px"><td class="title">내용  </td> <td class="memo"><input type="text" name="memo" id="input" style="height:400px;" required></td></tr>
				</table>
			</div>
				<input type="submit" value="작성" onclick="confirm('작성하시겠습니까?')">
				</form>
			
		</main>
	</div>
	<div class="footer">
		<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
	</div>

</body>
</html>
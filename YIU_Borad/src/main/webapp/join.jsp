<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	.join{
		display: flex;
		border:1px solid white;
		height: 500px;
		padding: 100px;
		justify-content: center;
	}
	#login{
		font-size : 20px;
		text-align: center;
	}
	#signup fieldset {
	border: 1px solid white;
	margin-bottom: 30px;
	}
			
	#signup legend {
		font-size: 30px;
		font-weight: bold;
		padding-left:70px;
		padding-bottom: 10px;
		text-align: center;	
	}
	#signup ul li {
		line-height: 30px;
		list-style: none;
		padding: 5px 10px;
		margin-bottom: 2px;
	}
	#signup label {
	float: left;  
	font-size: 13px;  
	width: 110px; 
	}
	#button{
		float:right;
	}
	.register{
		display: flex;
		font-size: 12px;
		justify-content: space-around;
	}
</style>
</head>
<body>
<div class="head">
		<header>
			<img src="images/logo.jpg" alt="logo">
			<div class="login">
				<a href="login.jsp"><b> 로그인 </b></a>
				<a href="join.jsp"><b> 회원가입 </b></a>
			</div>
		</header>
		<nav>
			<a href="javascript:alert('로그인 후 이용 가능합니다. ');">학과별 게시판</a>
			<a href="javascript:alert('로그인 후 이용 가능합니다. ');">중고거래</a>
		</nav>
	</div>
	<div class="main">
		<main>
			<div class="join">
				<form id="signup" action="join.do" method="post">
			      <legend>회원가입</legend>
				      <ul style="padding:0px;">
				        <li>
				          <label for="userid">학번</label>
				          <input id="userid" name="id" type="text" required autofocus>
				        </li>
				        <li>
				          <label for="pwd1">비밀번호</label>
				          <input id="pwd1" name="pwd" type="password"  required>
				        </li>
				         <li>
				          <label for="pwd1">이름</label>
				          <input id="name" name="name" type="text"  required>
				        </li>
				         <li>
				        	 <select name="dip" style="width:180px; margin:10px 0px 10px 35px;">
								<option value="컴퓨터과학">컴퓨터과학 </option>
								<option value="AI">AI </option>
							</select>	
				        </li>
				        <li>
				        	<input type="submit" value="회원가입 " id="button" onclick="join();"/><br>
				        </li>
				      </ul>
	     		 </form>
		</main>
	</div>
	<div class="footer">
		<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
	</div>
<script>
	function join(){
		
		var id = document.getElementById('userid').value;
		var pwd = document.getElementById("pwd1").value;
		var name = document.getElementById("name").value;
		
		
		if(id == "" || pwd == "" || name == ""){
			alert('모든 항목을 입력해주세요.')
		}else{
			alert('회원가입 완료!')
		}
	}
</script>	
</body>
</html>
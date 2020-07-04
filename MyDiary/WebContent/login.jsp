<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<!-- viewport=화면상의 표시영역, content=모바일 장치들에 맞게 크기조정, initial=초기화면 배율 설정 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- 스타일시트로 css폴더의 bootstrap.css파일 사용 -->
<title>예짱 다이어리</title>
</head>
<body>
	<nav class="navbar navbar-default"> <!-- navbar-색상(inverse = 검은색, default = 색x) -->
		<div class="navbar-header"> <!-- 메뉴 헤더부분 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
			<!-- class="navbar-toggle collapsed"=>네비게이션의 화면 출력유무 
				data-toggle="collapse" : 모바일 상태에서 클릭하면서 메뉴가 나오게 설정 
				aria-expanded값 닫혔을때 false 열렸을때 true-->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<!-- 아이콘 이미지 (3개여서 3줄) -->
				</button>
			<a class="navbar-brand" href="main.jsp">예짱 다이어리</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"> <!-- navbar-nav => 네비게이션 바의 메뉴로 id를 toggle data-target과 동일한 이름-->
				<li><a href="main.jsp">메인</a></li>
				<li><a href="main.jsp">일기장</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right"> <!-- navbar-right으로 오른쪽에 접속하기 토글 버튼 추가-->
				<li class="dropdown"> 
				 <!--<a></a> 태그는 하이퍼링크를 걸어주는 태그-->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기
						<span class="caret"></span>
						<!-- 임시의 주소링크 "#"을 기재한다. -->
						<!-- caret = creates a caret arrow icon (▼) -->
					</a> 
					<!--ul태그 순서가 필요없는 목록 -->
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</nav>
	
	<div class="container"> <!-- css 부트스트랩 반응형 고정폭 콘테이너 -->
		<div class="col-lg-4"></div>
		<!-- col-log-* 1200px이하에서 세로로 표시 시작 -->
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- jumbotron indicates a big box(큰 상자) -->
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">LOGIN</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
		
	</div>
	
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원 정보</title>
<link rel="stylesheet" href="../assets/css/info.css" />
</head>

<body>

	<header>
		<nav class="header-nav">
			<div>
				<a href="index.html"><h1>Travel</h1></a>
			</div>
		</nav>
	</header>

	<main class="container">
	<div class="login-page">
		<h1>회원 정보 확인/수정</h1>

		<div class="form">
			<h3>닉네임</h3>
			<input class="nickname" id="nickname" name="nickname" type="text"
				placeholder="싸피최우수생" />
			<button class="dupli" type="submit"
				onclick="alert('이 닉네임은 사용 가능합니다.')
          ">
				중복확인</button>
			<h3>ID</h3>
			<input class="join-text" id="id" name="id" type="text"
				placeholder="김싸피" />
			<h3>비밀번호</h3>
			<input class="join-text" id="password" name="password"
				type="password" placeholder="123456!" />
			<h3>이메일</h3>
			<input class="join-text" id="email" name="email" type="email"
				placeholder="ssafy" /> <input class="whelk" value="@" />
			<select name="email-sel" class="email-sel">
				<option value="naver">naver.com</option>
				<option value="naver">hanmail.net</option>
				<option value="naver">nate.com</option>
				<option value="naver">google.com</option>
				<option value="naver">kakao.com</option>
			</select>

			<h3>지역</h3>
			<input class="join-text" id="location" name="location" type="text"
				placeholder="대전" />

			<button type="submit" class="join-done"
				onclick="alert('수정이 완료되었습니다.')
          ">수정
				완료</button>
		</div>
	</div>
	</main>
	<footer>
		<ul class="footer-list">
			<li><a href="#">개인정보 처리방침</a></li>
			<li><a href="#">이용 약관</a></li>
			<li><a href="#">오시는 길</a></li>
			<li>&copy; SSAFY</li>
		</ul>
		<script type="text/javascript" src="js/main.js"></script>
		<script></script>
	</footer>
</body>
</html>
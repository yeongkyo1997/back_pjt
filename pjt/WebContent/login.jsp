<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/nav.jsp"%>

<main class="container">
<div class="login-page">
	<h1>Welcome</h1>
	<div class="form">
		<form class="login-form" method="post" action="${root}/user">
			<input type="hidden" name="action" value="login" /> <input
				type="text" placeholder="ID" name="id" /> <input type="password"
				placeholder="password" name="password" />
			<button type="submit" class="login-btn">로그인</button>
		</form>
		<button class="login-btn" type="button">
			<a href="${root}/register.jsp"> 회원가입 </a>
		</button>
	</div>
</div>
</main>
<footer>
	<ul class="footer-list">
		<li><a href="${root}/index.jsp">개인정보 처리방침</a></li>
		<li><a href="${root}/index.jsp">이용 약관</a></li>
		<li><a href="${root}/index.jsp">오시는 길</a></li>
		<li>&copy; SSAFY</li>
	</ul>
</footer>
</body>
</html>
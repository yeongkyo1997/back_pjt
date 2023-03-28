<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>사용자 정보 관리 사이트</title>
    <link rel="stylesheet" href="${root}/assets/css/register.css"/>
</head>
<body>
<header>
    <nav class="header-nav">
        <div>
            <a href="${root}/index.jsp"><h1>Travel</h1></a>
        </div>
    </nav>
</header>
<main class="container">
    <div class="login-page">
        <h1>Welcome</h1>
        <div class="form">
            <form class="register-form">
                <input id="id" name="id" type="text" placeholder="id"/> <input
                    id="password" name="password" type="password"
                    placeholder="password"/> <input id="email"
                                                    name="email" type="email" placeholder="email address"/>
                <input id="name" name="name" type="text" placeholder="name"/> <input
                    id="age" name="age" type="number" placeholder="age"/>
                <button onclick="regist()" type="button">회원 등록</button>
            </form>
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
    <script type="text/javascript" src="${root}/js/index.js"></script>
</footer>
</body>
</html>
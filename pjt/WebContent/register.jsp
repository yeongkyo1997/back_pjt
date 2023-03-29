<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>회원 정보</title>
    <link rel="stylesheet" href="${root}/assets/css/info.css"/>
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
        <h1>회원 가입</h1>

        <div class="form">
            <form action="${root}/user" method="post">
                <h3>닉네임</h3>
                <input class="nickname" id="nickname" name="nickname" type="text"
                       placeholder="닉네임"/>
                <button class="dupli" type="submit">중복확인
                </button>
                <input type="hidden" name="action" value="regist">
                <h3>ID</h3>
                <input class="join-text" id="id" name="id" type="text" placeholder="아이디"
                />
                <h3>비밀번호</h3>
                <input class="join-text" id="password" name="password" placeholder="비밀번호"
                       type="password"/>
                <h3>이메일</h3>
                <input class="join-text" id="email" name="email" type="text"
                       placeholder="이메일"/> <input class="whelk" value="@"/>
                <select
                        name="email-sel" class="email-sel">
                    <option value="naver">naver.com</option>
                    <option value="hanmail">hanmail.net</option>
                    <option value="nate">nate.com</option>
                    <option value="google">google.com</option>
                    <option value="kakao">kakao.com</option>
                </select>
                <button type="submit" class="join-done">가입하기
                </button>
            </form>
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
    <%--    <script type="text/javascript" src="${root}/assets/js/index.js"></script>--%>
    <script></script>
</footer>
</body>
</html>
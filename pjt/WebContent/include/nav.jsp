<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Travel</title>
<link rel="stylesheet" href="${root}/assets/css/index.css" />
<link rel="stylesheet" href="${root}/assets/css/index_main.css" />
<link rel="stylesheet" href="${root}/assets/css/index_header.css" />
<link rel="stylesheet" href="${root}/assets/css/index_modal.css" />
<link rel="stylesheet" href="${root}/assets/css/plan.css" />
<link rel="stylesheet" href="${root}/assets/css/plan_main.css" />
<link rel="stylesheet" href="${root}/assets/css/plan.css" />
<link rel="stylesheet" href="${root}/assets/css/plan_main.css" />
<link rel="stylesheet" href="${root}/assets/css/login.css" />
</head>

<body>
	<div class="modal">
		<div class="modal-body">
			<div id="map" style="width: 100%; height: 400px"></div>
			<div id="overview"></div>
		</div>
	</div>


	<header>
		<nav class="header-nav">
			<div id="logo">
				<a href="${root}/index.jsp">Travel</a>
			</div>
			<div class="header-nav-sub">
				<a href="${root}/login.jsp">로그인</a> <a href="${root}/register.jsp">회원가입</a>
				<a href="">로그아웃</a> <a href="${root}/plan.jsp">여행계획</a> <a
					href="${root}/info.jsp">마이페이지</a>
			</div>
		</nav>
	</header>
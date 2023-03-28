<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" href="${root}/assets/css/plan.css" />
<link rel="stylesheet" href="${root}/assets/css/plan_main.css" />
<link rel="stylesheet" href="${root}/assets/css/index_header.css" />
</head>
<body>
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
	<main class="container">
	<section class="content-festival">
		<div class="festival-list-title">
			<form role="search" action="${root}/trip?action=search"
				class="plan-search" onsubmit="return false;">
				<select id="search-area" class="form-select" name="sido"
					aria-label="Default select example">
					<option value="0" class="search-item" selected>지역</option>
				</select> <select id="search-content-id" class="form-select"
					name="content-type" aria-label="Default select example">
					<option value="0" class="search-item" selected>유형</option>
					<option value="12">관광지</option>
					<option value="14">문화시설</option>
					<option value="15">축제공연행사</option>
					<option value="25">여행코스</option>
					<option value="28">레포츠</option>
					<option value="32">숙박</option>
					<option value="38">쇼핑</option>
					<option value="39">음식점</option>

				</select> <input id="search-keyword" class="form-control" type="search"
					placeholder="검색어" aria-label="검색어" name="keyword" value="" /> <input
					type="image" src="${root}/assets/img/search.png" id="btn-search"
					class="btn btn-outline-success" value="검색" width="70px" />
			</form>

			<div class="row">
				<table class="table table-striped">
					<tbody id="trip-list">
						<tr>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="content-plan">
			<div class="plan-main"></div>
			<div class="row">
				<table class="table table-striped">
					<tbody class="plan-list">
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<div class="title">
		<h1>나의 관광지</h1>
	</div>
	<div class="content">
		<ul class="content-list">
		</ul>
	</div>
	</main>
	<script type="module" src="${root}/assets/js/plan.js"></script>
</body>
</html>
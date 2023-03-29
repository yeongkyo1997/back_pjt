<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ include file="/include/nav.jsp" %>
<link rel="stylesheet" href="${root}/assets/css/plan.css"/>
<link rel="stylesheet" href="${root}/assets/css/plan_main.css"/>
<main class="container">
    <section class="content-festival">
        <div class="festival-list-title">
            <form role="search" action="${root}/trip" class="plan-search">
                <input type="hidden" name="action" value="search"/> <select
                    id="search-area" class="form-select" name="sido"
                    aria-label="Default select example">
                <option value="0" class="search-item" selected>지역</option>
                <option value="1">서울</option>
                <option value="2">인천</option>
                <option value="3">대전</option>
                <option value="4">대구</option>
                <option value="6">부산</option>
                <option value="31">경기도</option>
                <option value="32">강원도</option>
                <option value="33">충청북도</option>
                <option value="34">충청남도</option>
                <option value="35">경상북도</option>
                <option value="37">전라북도</option>
                <option value="38">전라남도</option>
                <option value="39">제주도</option>

            </select> <select id="search-content-id" class="form-select" name="type"
                              aria-label="Default select example">
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
                             placeholder="검색어" aria-label="" name="keyword" value=""/> <input
                    type="submit" id="btn-search" class="btn btn-outline-success"
                    value="검색" width="70px"/>
                <%--				<button id="btn-search" class="btn btn-outline-success"--%>
                <%--					type="submit">검색</button>--%>
            </form>

            <div class="row">
                <table class="table table-striped">
                    <tbody id="content-list">
                    <c:forEach items="${tripList}" var="list">
                        <tr class="plan-item">
                            <td class="imgTd"><img src="${list.image}"/></td>
                            <td class="titleTd">
                                <div>
                                    <a href="${root}/detail.jsp">${list.title}</a>
                                </div>
                            </td>
                            <td class="addTd">${list.addr1}</td>
                        </tr>
                    </c:forEach>
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
<%--	<script type="module" src="${root}/assets/js/plan.js"></script>--%>
</body>
</html>
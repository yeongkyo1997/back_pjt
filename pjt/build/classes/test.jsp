<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<!-- 관광지 검색 start -->
	<form class="d-flex my-3" onsubmit="return false;" role="search">
		<select id="search-area" class="form-select me-2">
			<option value="0" selected>검색 할 지역 선택</option>
		</select> <select id="search-content-id" class="form-select me-2">
			<option value="0" selected>관광지 유형</option>
			<option value="12">관광지</option>
			<option value="14">문화시설</option>
			<option value="15">축제공연행사</option>
			<option value="25">여행코스</option>
			<option value="28">레포츠</option>
			<option value="32">숙박</option>
			<option value="38">쇼핑</option>
			<option value="39">음식점</option>
		</select> <input id="search-keyword" class="form-control me-2" type="search"
			placeholder="검색어" aria-label="검색어" />
		<button id="btn-search" class="btn btn-outline-success" type="button">검색</button>
	</form>
	<!-- kakao map start -->
	<div id="map" class="mt-3" style="width: 100%; height: 400px"></div>
	<!-- kakao map end -->
	<div class="row">
		<table class="table table-striped" style="display: none">
			<thead>
				<tr>
					<th>대표이미지</th>
					<th>관광지명</th>
					<th>주소</th>
					<th>위도</th>
					<th>경도</th>
				</tr>
			</thead>
			<tbody id="trip-list"></tbody>
		</table>
	</div>
	<!-- 관광지 검색 end -->
	<div id="trip-list"></div>
	<script>
        const serviceKey =
            "X54fNbEw%2FoFN5SvFiQP%2F5z8JUgV6LnLzNndRv4i%2FpnjZxY%2B%2Bub7JY1869vgvJ5iOP8kZhZ%2FfrIdB1f9jTleEzQ%3D%3D";
        let areaUrl =
            "https://apis.data.go.kr/B551011/KorService1/areaCode1?serviceKey=" +
            serviceKey +
            "&numOfRows=20&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json";

        // fetch(areaUrl, { method: "GET" }).then(function (response) { return response.json() }).then(function (data) { makeOption(data); });
        fetch(areaUrl, {method: "GET"})
            .then((response) => response.json())
            .then((data) => makeOption(data));

        function makeOption(data) {
            let areas = data.response.body.items.item;
            // console.log(areas);
            let sel = document.getElementById("search-area");
            areas.forEach((area) => {
                let opt = document.createElement("option");
                opt.setAttribute("value", area.code);
                opt.appendChild(document.createTextNode(area.name));

                sel.appendChild(opt);
            });
        }

        // 받은 데이터를 이용하여 화면 구성.
        document.getElementById("btn-search").addEventListener("click", () => {
            let searchUrl = `https://apis.data.go.kr/B551011/KorService1/searchKeyword1?serviceKey=${serviceKey}&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json&listYN=Y&arrange=A`;

            let areaCode = document.getElementById("search-area").value;
            let contentTypeId = document.getElementById("search-content-id").value;
            let keyword = document.getElementById("search-keyword").value;

            if (parseInt(areaCode)) searchUrl += `&areaCode=${areaCode}`;
            if (parseInt(contentTypeId)) searchUrl += `&contentTypeId=${contentTypeId}`;
            if (!keyword) {
                alert("검색어 입력 필수!!!");
                return;
            } else searchUrl += `&keyword=${keyword}`;

            fetch(searchUrl)
                .then((response) => response.json())
                .then((data) => makeList(data));
        });

        var positions; // marker 배열.
        function makeList(data) {
            document.querySelector("table").setAttribute("style", "display: ;");
            let trips = data.response.body.items.item;
            let tripList = ``;
            positions = [];
            console.log(trips)
            trips.forEach((area) => {
                tripList += `
            <tr onclick="moveCenter(${area.mapy}, ${area.mapx});">
              <td><img src="${area.firstimage}" width="100px"></td>
              <td>${area.title}</td>
              <td>${area.addr1} ${area.addr2}</td>
              <td>${area.mapy}</td>
              <td>${area.mapx}</td>
            </tr>
          `;
            });
            document.getElementById("trip-list").innerHTML = tripList;
        }
    </script>
</div>
</div>
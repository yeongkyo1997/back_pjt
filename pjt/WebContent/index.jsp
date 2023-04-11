<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="/include/nav.jsp"%>
<main class="container">
<div class="slideshow-container">

	<div class="mySlides fade">
		<div class="numbertext">1 / 3</div>
		<img src="${root}/assets/img/trip1.jpg">
		<!--   <div class="text">Caption Text</div> -->
	</div>

	<div class="mySlides fade">
		<div class="numbertext">2 / 3</div>
		<img src="${root}/assets/img/trip2.jpg">
		<!--   <div class="text">Caption Two</div> -->
	</div>

	<div class="mySlides fade">
		<div class="numbertext">3 / 3</div>
		<img src="${root}/assets/img/trip3.jpg">
		<!--   <div class="text">Caption Three</div> -->
	</div>

</div>
<br>

<div style="text-align: center">
	<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
</div>
<section class="content-travel">
	<div class="travel-list-title"></div>
	<ul class="travel-list-ul"></ul>
</section>
</main>
<script type="module" src="${root}/assets/js/index.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=264d45bbdeb485701fb83d802daa856e"></script>
<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>
</body>
</html>
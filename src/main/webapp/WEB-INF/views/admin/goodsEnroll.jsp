<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">



<title>상품등록</title>




<link rel="stylesheet" href="${path}/resources/css/goodsEnroll.css">




<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
	<div class="container">
		<div class="slide-bar" id="slidebar">
			<div class="bar" id="bar"></div>
		</div>
		<div class="neon_effect">
			<div class="text-block" id="textone">
				<h1 class="mainText">registration</h1>
			</div>
			<div class="text-block" id="texttwo">
				<h1 class="mainText2">상품 등록</h1>
			</div>
		</div>
	</div>
</body>
<!-- <form action="/adminMenu/goodsEnroll" method="post" id="enrollForm">
		<label>SPACE SHIP NAME</label> <input name="shipName"
			required="required" type="text" class="inputTag"> <br> <label>SPACE
			SHIP PRICE</label> <input name="shipPrice" required="required" type="number"
			class="inputTag"><br> <label>SPACE SHIP STOCK
			(TIP:재고)</label> <input name="shipStock" required="required" type="number"
			class="inputTag"><br> <label>SPACE SHIP INTRO</label> <input
			name="shipIntro" required="required" type="text" class="inputTag">
		<br>
		<button type="submit" id="enrollBtn" class="btn enroll_btn">등
			록</button>
	</form>
	<button id="cancelBtn" class="btn">취 소</button> -->
<form action="/adminMenu/goodsEnroll" method="post" id="enrollForm">
	<div class="mainBox">
		<div class="neon_effect">
			<div class="userText">
				<h2 class="userText1H2">
					PRODUCT NAME <br> 
					PRODUCT PRICE <br> 
					PRODUCT STOCK <br> 
					DESCRIPTION
				</h2>
			</div>
		</div>
		<div class="neon_effect">
			<div class="userText2">
				<h2 class="userText2H2">
					<input name="shipName" required="required" type="text"
						class="input-ty1" placeholder="Ex:오사마 빈 라덴 자서전(상품명)"> <br> <input name="shipPrice"
						required="required" type="number" class="input-ty1"placeholder="Ex:1000(가격)"><br>
					<input name="shipStock" required="required" type="number"
						class="input-ty1" placeholder="Ex:9689(재고량)"><br> <input name="shipIntro"
						required="required" type="text" class="input-ty1" placeholder="Ex:알라는 위대하시다(간단상품설명)"><br>
				</h2>
			</div>
		</div>
	</div>
	
	<div class="neon_effect">
		<button type="submit" id="enrollBtn" class="mainBtn">
			<div class="back">
				<a class="btn btn--1"><p class="pGold">등록</p></a>

			</div>
		</button>
	</div>
	
	<div class="neon_effect">
				<div class="exitBtnBox">
					<a href="/adminMenu" class="homeGoBtn"><p class="exitBtn">홈으로 가기</p></a>
				</div>
	
</form>


<!-- 지우면 안되는 쓸모없는 쓰레기 버튼 -->
<button id="changeBtn" class="changeBtn">&nbsp;</button>
<body>
	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomEase3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/DrawSVGPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/ScrambleTextPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/MorphSVGPlugin3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomBounce3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CustomWiggle3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/InertiaPlugin.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Draggable3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/EasePack3.min.js'></script>
	<script
		src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Flip.min.js'></script>
	<script id="rendered-js">
	
	/* 취소 버튼 */
	
	
const root = document.documentElement;
const changeBtn = document.getElementById('changeBtn');
let mode = false;

let whiteColor = getComputedStyle(root).getPropertyValue("--white");
let blackColor = getComputedStyle(root).getPropertyValue("--black");

changeBtn.addEventListener('click', e => changeColor());

function changeColor() {
  mode = !mode;
  if (mode) {
    root.style.setProperty('--white', blackColor);
    root.style.setProperty('--black', whiteColor);
  } else {
    root.style.setProperty('--white', whiteColor);
    root.style.setProperty('--black', blackColor);
  }
}

const slideTL = gsap.timeline();
const maskTL = gsap.timeline();
const mainTL = gsap.timeline({
  repeat: -1,
  onRepeat: () => {
    gsap.set('#texttwo', { opacity: 0 });
    gsap.set('#bar', { scaleY: 0.1 });
    gsap.set('#textone h1', { opacity: 1 });
  } });


gsap.set('#texttwo', { opacity: 0 });
gsap.set('#bar', { scaleY: 0.1 });

slideTL.
to('#bar', 1, {
  y: 225,
  scaleY: 1,
  ease: "back.out" }).

to('#slidebar', 1.5, {
  x: 600,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).

to('#slidebar', 1.5, {
  x: 0,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).

to('#slidebar', 1.5, {
  x: 600,
  delay: 0.5,
  ease: "back.inOut(0.8)" }).

to('#bar', 1, {
  y: 500,
  scaleY: 0.1,
  ease: "back.in" });


maskTL.
to('#textone', 1.5, {
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 91% 0, 81% 100%, 0% 100%)",
  onComplete: () => {
    gsap.set('#texttwo', { opacity: 1 });
  } }).

to('#textone', 1.5, {
  delay: 0.5,
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 18% 0, 8% 100%, 0% 100%)",
  onComplete: () => {
    gsap.set('#textone h1', { opacity: 0 });
  } }).

to('#textone', 1.5, {
  delay: 0.5,
  ease: "back.inOut(0.8)",
  "clip-path": "polygon(0 0, 91% 0, 81% 100%, 0% 100%)" });



mainTL.
add(slideTL).
add(maskTL, 1.5);
//# sourceURL=pen.js
    </script>



	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>
</body>

</html>


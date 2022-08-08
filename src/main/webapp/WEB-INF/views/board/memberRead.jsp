<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<link rel="stylesheet" href="../../../resources/css/memberRead1.css">
<body>

   <div class="header">
			<h1 class="Logo"> <a href="/memberRead2?user_no=${sessionScope.user_no}">SPACE SHIP</a></h1>

			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="a1">ufo</a> <a
				href="/moveMakeWeb5" class="a1">우주인채용</a> 
				
				
			
			 <a class="frame-btn" href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>
			</div>
   
   <h1 class="header">회원상세보기</h1>
   아이디 : ${dto.user_id} <br>
   닉네임 : ${dto.user_nick}<br>
   전화번호 : ${dto.user_phone}<br>
   이메일 : ${dto.user_email}<br>
   성인여부 : ${dto.user_adult}<br>
   이메일 수신여부 : ${dto.email_check}<br>
   
   <a href="/memberUpdate?user_no=${dto.user_no}">수정하러 가기</a> <br>
   <a href="/">목록으로</a>
</body>
</html>
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
  <div class="neon_effect">
   <h1 class="pGold">My Information</h1>
   <div class="userText1">
	  <h2 class="userText1H2">ID <br>
	   Name  <br>
	   Phone  <br>
	   E-Mail <br>
	   are you an adult?  <br>
	   receive E-Mail </h2>
    </div>
 <div class="userText2">
    	<h2 class="userText2H2">
    	${dto.user_id} <br>
    	${dto.user_nick}<br>
    	${dto.user_phone}<br>
    	${dto.user_email}<br>
    	${dto.user_adult}<br>
    	${dto.email_check}
    	</h2>
     </div>
	   <div class="footer">
	   <a href="/memberUpdate?user_no=${dto.user_no}">수정하러 가기</a><br>
	   <a href="/">목록으로</a>
	   </div>
   </div>
</body>
</html>
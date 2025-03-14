<!-- 내정보 수정하기 - 2.내정보 수정하기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>내 정보 수정하기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/mypage/infoEdit/editInfo.css">
    <script defer src="${pageContext.request.contextPath }/assets/js/mypage/infoEdit/editInfo.js"></script>
  </head>
  <body>
    <main class="itAskBox">   
      <a href="#">
        <img src="./../../../assets/img/logo.png" alt="ITASK 로고">
      </a>   
      
      <p>
        내 정보 수정하기<br>
        <span>회원정보를 입력해주세요</span>
      </p>

      <section>        
        <ul>
          <li><strong>인증된 정보</strong></li>
          <li>이름 : 홍길동</li>
          <li>아이디 : ABCode</li>
          <li>핸드폰 번호 : +82 10-1234-5678 </li>
        </ul>
      </section>
      <!-- 닉네임 입력칸 -->
      <form action="${pageContext.request.contextPath }/mypage/editInfo.my" name="keh-editInfo-infoForm" class="keh-editInfo-infoForm" method="get">
        <div class="keh-editInfo-nickNameBox">
          <input type="text" name="keh-editInfo-nickName" class="keh-editInfo-nickName" placeholder="변경할 닉네임">
          <input type="submit" name="keh-editInfo-nickName-btn" class="keh-editInfo-nickName-btn" value="수정">
        </div>   

        <p>공백없이 한글, 영문, 숫자 포함 6~15자</p>
        <p>특수문자 사용불가</p>
        <!-- 닉네임 중복일시 출력되는 문구.  이외의 유효성검사는 모두 alert()로 날릴것임-->
        <div class="bjs-editInfo-duplicate-nickName">이미 있는 닉네임입니다</div>
        
      </form>
      <hr>
      <button><a href="${pageContext.request.contextPath }/mypage/infoEdit/editPw.html">비밀번호 수정하기</a></button><br>
      <button><a href="${pageContext.request.contextPath }/mypage/infoEdit/editPhoneNum.html">핸드폰 번호 수정하기</a></button><br>
      <button id="idid">회원 탈퇴하기</button>
      
    </main>
  </body>
</html>

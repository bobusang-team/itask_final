<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 회원가입 페이지 2/3 : 회원정보 입력 -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보 입력</title>

<link rel="stylesheet" href="./../../assets/css/member/join.css">
<link rel="stylesheet" href="./../../assets/css/header.css">
<link rel="stylesheet" href="./../../assets/css/footer.css">
<script defer src="./../../assets/js/member/join.js"></script>
</head>



<body>
	<!-- 헤더 영역 -->
	<jsp:include page="../basic/header.jsp" />
	<!-- 공통 메인 영역 -->
	<main class="itAskBox">
		<!-- 이 영역 안에 자유롭게 작업하시면 됩니다 -->

		<a> <img src="./../../assets/img/logo.png" alt="ITASK 로고">
		</a>
		<p>
			회원정보 입력<br> <span>회원정보를 입력해주세요</span>
		</p>

		<!-- 회원정보 입력칸 -->
		<form
			action="${pageContext.request.contextPath}/html/member/joinOk.me"
			name="lsa-join-infoForm" class="lsa-join-infoForm" method="post">
			<div class="lsa-join-infoBox-name">
				<input type="text" name="userName"
					class="lsa-join-info-name" placeholder="이름">
			</div>
			<div class="lsa-join-infoBox-phoneNumber">
				<input type="text" name="userPhone"
					class="lsa-join-info-phoneNumber" placeholder="핸드폰번호 (-없이 입력하기)">
				<input type="submit" name="lsa-join-info-phoneNumber-btn"
					class="lsa-join-info-phoneNumber-btn" value="인증번호 받기">
			</div>

			<div class="lsa-join-infoBox-certiNumber">
				<input type="text" name="lsa-join-info-certiNumber"
					class="lsa-join-info-certiNumber" placeholder="인증번호를 입력해주세요">
				<input type="submit" name="lsa-join-info-certiNumber-btn"
					class="lsa-join-certiNumber-btn" value="인증번호 확인">
				<!-- 아래 p태그 : 인증 성공시 나오는 문구 -> "인증번호가 확인되었니다" -->
				<p class="lsa-join-info-certiNumber-check">인증번호가 확인되었습니다</p>
			</div>
			<div class="lsa-join-infoBox-id">
				<input type="text" name="userId" class="lsa-join-info-id"
					placeholder="아이디"> <input type="submit"
					name="lsa-join-info-id-btn" class="lsa-join-info-id-btn"
					value="중복검사">
				<p class="lsa-join-info-id-inputStandard">공백없이 영문,숫자 6~15자</p>
				<!-- 아래 p태그 : 아이디 중복확인 성공시 나오는 문구 -> "아이디 적합합니다" -->
				<!-- 아래 p태그 : 아이디 중복확인 성공시 나오는 문구 -> "이미 있는 아이디 입니다" -->
				<p class="lsa-join-info-id-check1"></p>
				<p class="lsa-join-info-id-check2"></p>
			</div>


			<div class="lsa-join-infoBox-pw1">
				<input type="password" name="userPw"
					class="lsa-join-info-pw" placeholder="비밀번호 입력"> <img
					src="./../../assets/img/hidden 4.png" alt="비밀번호 숨김">
				<p class="lsa-join-info-pw-inputStandard">공백없이 영문(대/소문자) 숫자 및
					특수문자 조합 8~20자</p>
				<!-- 아래 p태그 : 비밀번호 생성 성공시 나오는 문구 -> "비밀번호로 적합합니다" -->
				<!-- 아래 p태그 : 비밀번호 생성 실패시 나오는 문구 -> "비밀번호 생성 조건에 맞춰서 다시 입력하세요" -->
				<p class="lsa-join-info-pw-check1"></p>
				<p class="lsa-join-info-pw-check2"></p>
			</div>

			<div class="lsa-join-infoBox-pw2">
				<input type="password" name="userPwCheck"
					class="lsa-join-info-pw" placeholder="비밀번호 확인"> <img
					src="./../../assets/img/hidden 4.png" alt="비밀번호 숨김">
				<!-- 아래 p태그 : 비밀번호 불일치시 나오는 문구 -> "위의 비밀번호와 일치하지 않습니다" -->
				<p class="lsa-join-info-pw-check"></p>
			</div>

			<div class="lsa-join-infoBox-nickName">
				<input type="text" name="userNick"
					class="lsa-join-info-nickName" placeholder="닉네임"> <input
					type="submit" name="lsa-join-info-nicName-btn"
					class="lsa-join-info-nickName-btn" value="중복검사">
				<p class="lsa-join-inputStandard">공백없이 한글,영문,숫자 2~10자</p>
				<!-- 아래 p태그 : 닉네임 중복확인 실패시 나오는 문구 -> "이미 있는 닉네임입니다" -->
				<p class="lsa-join-info-nickName-check"></p>
			</div>

			<div class="lsa-join-infoBox-email">
				<input type="text" name="userMail"
					class="lsa-join-info-email" placeholder="(선택) 이메일 주소"> <input
					type="submit" name="lsa-join-info-email-btn"
					class="lsa-join-info-email-btn" value="중복검사">
				<!-- 아래 p태그 : 이메일 중복확인 실패시 나오는 문구 -> "이미 있는 이메일 주소입니다" -->
			</div>

			<div class="lsa-join-joinBox">
				<button name="lsa-join-infoBtn" class="lsa-join-infoBtn" value="회원가입">
					회원가입
				</button>
			</div>
		</form>
	</main>
	<!-- 푸터 영역 -->
	<jsp:include page="../basic/footer.jsp" />
</body>
</html>

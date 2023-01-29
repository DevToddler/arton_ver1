<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ArtOn</title>
  <link rel="icon" href="./img/arton_logo_withoutletter.png">
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/login.css'/>">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>
<body>
<div class="login_box">
  <form action="<c:url value='/login/login' />" method="post" id="login_area" name="form" autocomplete="off" onsubmit="return form_chk(this)">
    <a href="<c:url value='/'/> "><div class="login_logo">로고</div></a>
    <div class="inner_login">
      <div class="login_title" >로그인</div>
      <input class="id_pw" name="userId" id="id" type="text" placeholder="아이디를 입력해 주세요" value="<c:url value='${cookie.userId.value}'/>" autofocus>
      <input class="id_pw" name="userPw" id="pw" type="password" placeholder="비밀번호를 입력해 주세요">
      <div class="remem_id">
        <input type="checkbox" id="remem_icon" name="rememberId" ${empty cookie.userId.value?"":"checked"}>
        <label for="remem_icon">
          <span class="remem_real_icon"></span>
          <span class="remem_title">아이디 기억하기</span>
        </label>
      </div>
      <div class="login_msg"></div>
      <button type="submit" id="login_btn">로그인</button>
      <ul class="choice_box">
        <li>
          <a href="<c:url value='/register/terms'/>">회원가입</a>
        </li>
        <li>
          <a href="#">아이디 찾기</a>
        </li>
        <li>
          <a href="#">비밀번호 찾기</a>
        </li>
      </ul>
    </div>
  </form>
  <div class="img_area">
    <div class="inner_img" style="background: url(<c:url value='/img/login/login_poster.jpg'/>) no-repeat center / 399px"></div>
  </div>
</div>
<script src="<c:url value='/js/login.js'/>"></script>
</body>
</html>

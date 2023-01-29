<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ArtOn</title>
  <link rel="icon" href="<c:url value='/img/최종_바비콘.png'/>">
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/changepassword.css'/>">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<body>
<div class="outer_change_box">
  <a href="<c:url value='/'/>"><img class="change_img" src="<c:url value='/img/메인_로고.png'/>" alt=""></a>
  <div class="change_box">
    <div class="change_txt_box">
      <div class="change_title">비밀번호 변경</div>
      <div class="change_text"><u>안전한 비밀번호로 내 정보를 보호</u>하세요</div>
      <div class="change_text txt_red"><span>•</span> 다른 아이디/사이트에서 사용한 적 없는 비밀번호</div>
      <div class="change_text"><span>•</span> <span class="txt_red">이전에 사용한 적 없는 비밀번호</span>가 안전합니다</div>
    </div>
    <%--pw_form_chk(this)--%>
    <form action="<c:url value='/myPage/updatePw'/>" method="post" id="c_box_form" autocomplete="off" onsubmit="return pw_form_chk(this);">
      <div class="inner_change">
        <div class="ch_form_group">
          <div class="form_sec">
            <input type="password" class="in_change_text" id="pw" name="userPw" placeholder="현재 비밀번호" tabindex="0">
            <div class="change_msg" id="cha_msg_pw"></div>
            <input type="password" class="in_change_text" id="new_pw"
                   name="newPw" placeholder="새 비밀번호" tabindex="0">
            <div class="change_msg" id="cha_msg_new_pw"></div>
            <input type="password" class="in_change_text" id="chk_pw" onfocus="pw_focus_chk('chk_pw');"
                   name="chkPw" placeholder="새 비밀번호 확인" tabindex="0">
            <div class="change_msg" id="cha_msg_chk_pw"></div>
            <div class="pw_msg">특수문자는 #?!@$ %^&*- 만 사용가능합니다.</div>
          </div>
          <button type="button" class="ch_btn" id="ch_btn_can">취소</button>
          <button class="ch_btn" id="ch_btn_agr">확인</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script src="<c:url value='/js/changepassword.js'/>"></script>
</body>
</html>
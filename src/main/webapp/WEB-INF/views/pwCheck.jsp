<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>
    <link rel="icon" href="<c:url value='/img/arton_logo_withoutletter.png'/>">
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/changepassword.css'/>">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<body>
<div class="outer_change_box">
    <a href="<c:url value='/'/>"><img class="change_img" src="<c:url value='/img/메인_로고.png'/>" alt=""></a>
    <div class="change_box">
        <div class="change_txt_box">
            <div class="change_title">비밀번호 재확인</div>
            <div class="change_text">개인정보보호를 위해 회원님의 비밀번호를 다시 한번 확인합니다.</div>
        </div>
        <form action="<c:url value='/myPage/myInfoChk'/>" method="post" id="c_box_form" autocomplete="off" onsubmit="return true;">
            <div class="inner_change">
                <div class="ch_form_group">
                    <div class="form_sec">
                        <input type="text" class="in_change_text" id="id" placeholder="${sessionScope.userId}" tabindex="0" readonly>
                        <div class="change_msg" id="cha_msg_id"></div>
                        <input type="password" class="in_change_text" id="pw" name="userPw" placeholder="현재 비밀번호" tabindex="0">
                        <div class="change_msg" id="cha_msg_pw"></div>
                    </div>
                    <button type="button" onclick="<c:url value='/myPage/myPage'/>" class="ch_btn" id="ch_btn_can">취소</button>
                    <button type="submit" class="ch_btn" id="ch_btn_agr">확인</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>

</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="<c:url value='/css/user_change.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="<c:url value='/js/h_f.js'/>"></script>

</head>
<body>
<div id="wrap">
  <div class="ham_box">
    <div class="side_ham_box">
      <div class="side_hamberg">
        <div class="line" ></div>
        <div class="line" ></div>
        <div class="line" ></div>
      </div>
      <a href="<c:url value='/myPage/myPage'/>"><div class="ham_head">마이페이지</div></a>
      <c:choose>
        <c:when test="${userId==null || userId.equals('')}">
          <a href="<c:url value='/login/login'/>"><div class="ham_head">로그인</div></a>
        </c:when>
        <c:otherwise>
          <a href="<c:url value='/login/logout'/>"><div class="ham_head">로그아웃</div></a>
        </c:otherwise>
      </c:choose>
    </div>
    <ul class="ham_menu_ul">
      <li>
        <a href="<c:url value='/cate/cate?cateCode=1'/>">콘서트</a>
      </li>
      <li>
        <a href="<c:url value='/cate/cate?cateCode=2'/>">뮤지컬</a>
      </li>
      <li>
        <a href="<c:url value='/cate/cate?cateCode=3'/>">연극</a>
      </li>
      <li>
        <a href="<c:url value='/cate/cate?cateCode=4'/>">클래식</a>
      </li>
      <li>
        <a href="<c:url value='/cate/cate?cateCode=5'/>">전시</a>
      </li>
      <li>
        <a href="<c:url value='/cate/cate?cateCode=6'/>">아동</a>
      </li>
    </ul>
    <div class="ham_reg">
      <a href="<c:url value='/rank/rank'/>"><div class="ham_rank">랭킹</div></a>
      <img src="./img/art_pick/concert_1.jpg" alt="">
      <div class="ham_per">짙은겨울</div>
    </div>
  </div>
  <header class="header">
    <div class="header_area">
      <div class="hamberg">
        <div class="line" ></div>
        <div class="line" ></div>
        <div class="line" ></div>
      </div>
      <div class="logo">아트온 로고<a href="<c:url value='/'/>"></a></div>
      <ul class="menu_ul">
        <li>
          <a href="<c:url value='/cate/cate?cateCode=1'/>">콘서트</a>
        </li>
        <li>
          <a href="<c:url value='/cate/cate?cateCode=2'/>">뮤지컬</a>
        </li>
        <li>
          <a href="<c:url value='/cate/cate?cateCode=3'/>">연극</a>
        </li>
        <li>
          <a href="<c:url value='/cate/cate?cateCode=4'/>">클래식</a>
        </li>
        <li>
          <a href="<c:url value='/cate/cate?cateCode=5'/>">전시</a>
        </li>
        <li>
          <a href="<c:url value='/cate/cate?cateCode=6'/>">아동</a>
        </li>
      </ul>
      <div class="icon_list">
        <div class="search_area">
          <div class="search">
            <a href="<c:url value='/search/search'/>">
              <div class="search_bar">
              </div>
            </a>
          </div>
          <input id="srch_con" type="text" value="">
        </div>
        <div class="icon_area">
          <div class="icon_sec">
            <a href="<c:url value='/rank/rank'/>">
              <div class="rank_img"></div>
              <span class="text">랭킹</span>
            </a>
          </div>
          <div class="icon_sec">
            <c:choose>
              <c:when test="${userId==null || userId.equals('')}">
                <a href="<c:url value='/login/login'/>">
                  <div class="login_img"></div>
                  <div class="text">로그인</div>
                </a>
              </c:when>

              <c:otherwise>
                <a href="<c:url value='/login/logout'/>">
                  <div class="logout_img"></div>
                  <div class="text">로그아웃</div>
                </a>
              </c:otherwise>
            </c:choose>
          </div>
          <div class="icon_sec">
            <a href="<c:url value='/myPage/myPage'/>">
              <div class="my_img"></div>
              <div class="text">마이페이지</div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </header>
  <form action="#" method="post" class="user_change" autocomplete="off" onsubmit="return form_chk(this);">
    <div class="u_title">회원정보</div>
    <table class="u_table">
      <colgroup>
        <col style ="width:25%">
        <<col style ="width:75%">
      </colgroup>
      <tbody>
      <tr class="u_tr">
        <td class="u_change_title">아이디</td>
        <td class="u_change_body">
          <div id="u_real_id">${userDto.userId}</div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">이름</td>
        <td class="u_change_body">
          <div id="u_real_name">${userDto.userName}</div>
          <input type="text" placeholder="새로운 이름 입력" id="u_new_name" onfocus="focus_chk('u_new_name');" name="u_new_name" tabindex="0">
          <div class="u_msg" id="u_msg_new_name"></div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">생년월일</td>
        <td class="u_change_body">
          <div id="u_birth">${userDto.birthDate}</div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">성별</td>
        <td class="u_change_body">
          <div id="u_gender">${userDto.gender}</div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">비밀번호 변경</td>
        <td class="u_change_body">
          <a href="<c:url value='/myPage/updatePw'/> " ><input type="button" id="pw_ch_btn" value="비밀번호 변경"></a>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">이메일</td>
        <td class="u_change_body">
          <div id="u_real_email">${userDto.userEmail}</div>
          <input type="text" placeholder="새로운 이메일주소 입력" id="new_email" name="new_email" onfocus=" focus_chk('new_email');" tabindex="0">
          <div class="u_msg" id="u_msg_new_email"></div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">휴대전화 번호</td>
        <td class="u_change_body">
          <div id="u_real_phone">${userDto.userPhone}</div>
          <input type="tel" id="u_new_phone" onfocus="focus_chk('u_new_phone');" name="u_new_phone" tabindex="0" placeholder="새로운 휴대전화번호 입력" maxlength="11">
          <div class="u_msg" id="u_msg_new_phone"></div>
        </td>
      </tr>

      <tr class="u_tr">
        <td class="u_change_title">광고 수신동의</td>
        <td class="u_change_body">
          <span class="ad_ment">아트온에서 제공하는 이벤트/혜택 등 다양한 정보를 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로 운영하거나 아트온 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다 (선택) </span>
          <br>
          <br>
          <input type="radio" class="txt" id="agree" name="promo_btn" value="1" ${userDto.promoChk == true?"checked":""}>
          <label for="agree">
            수신동의
          </label>
          <input type="radio" class="txt" id="disagree" name="promo_btn" value="0"${userDto.promoChk == false?"checked":""}>
          <label for="disagree">
            수신거부
          </label>

        </td>
      </tr>

      </tbody>
    </table>
    <button type="submit" id="btn_submit">회원정보 수정</button>
  </form>
</div>
<script src="<c:url value='/js/user_change.js'/>"></script>
<footer class="footer">
  <div class="contents_area">
    <div class="f_logo"></div>
    <div class="f_desc">
      <p class="f_title">아트온</p>
      <p>서울특별시 강남구 서초동 서울로 1길 1 대표 아트온</p>
      <p>사업자 등록번호: 1001-1314-15444 / 통신판매번호: 제 2002-00000호</p>
      <p>Copyright YM_ARTON INC.ALL Rights Reserved</p>
    </div>
    <div class="cst_num">
      <img src="./img/call.png" alt="">
      <span>고객센터</span>
      <p class="f_number">1544-0000</p>
    </div>
  </div>
</footer>

</body>
</html>
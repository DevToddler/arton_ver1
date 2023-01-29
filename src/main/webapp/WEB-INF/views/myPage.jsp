<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ArtOn</title>
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/mypage.css'/>">
  <link rel="icon" href="<c:url value='/img/최종_바비콘.png'/>">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="<c:url value='/js/mypage.js'/>"></script>
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
      <!-- <a href="/myPage/myPage"><div class="ham_head">로그인</div></a> -->
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
      <img src="<c:url value='/img/perfPoster/${list[0].id}.jpeg'/>" alt="">
      <div class="ham_per">${list[0].perfName}</div>
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
  <main class="main">
    <div class="contents_area">
      <ul class="mytabs">
        <li class="mytabs_li" data-tab="mytab_mypage">마이페이지
          <span></span>
        </li>
        <li class="mytabs_li" data-tab="mytab_tit_chk">예매확인/취소
          <span></span>
        </li>
        <li class="mytabs_li" data-tab="mytab_likes">찜목록
          <span></span>
        </li>
      </ul>
      <div class="mypage_tab userinfo_section tab_curr" id="mytab_mypage">
        <div class="myinfo_box">
          <img src="<c:url value='/img/person_icon_black.png'/>" alt="">
          <div class="myinfo_userbox">
            <div class="user_name">${userId}</div>
            <a href="<c:url value='/myPage/myInfoChk'/>"><button class="user_info_btn">회원정보</button></a>
          </div>
        </div>

        <div class="myticket_box">
          <div class="box_top">
            <div class="box_name">예매확인/취소</div>
            <div class="more_btn mytit_more_btn">더보기></div>
          </div>
          <div class="mytit_list">
            <table class="mytit_list_table tab1">
              <colgroup>
                <col style ="width:20%">
                <col style ="width:40%">
                <col style ="width:25%">
                <col style ="width:15%">
              </colgroup>
              <thead>
              <tr>
                <th scope="col">예매일</th>
                <th scope="col">공연정보</th>
                <th scope="col">예매정보</th>
                <th scope="col">상태</th>
              </tr>
              </thead>
              <tbody class="mytit_list_tbody">
              <c:if test="${empty myBookingList}">
                <h2>예매 목록이 없습니다.</h2>
              </c:if>
              <c:forEach var="bookingDto" items="${myBookingList}" begin="0" end="4" >
                <tr>
                  <td class="buy_date">${bookingDto.bookingTime}</td>

                  <td class="per_info">
                    <div class="thumb_img">
                      <a href="<c:url value='/deal/deal?perfCode=${bookingDto.perfId}'/>">
                        <img src="<c:url value='/img/perfPoster/${bookingDto.perfId}.jpeg'/>" alt="">
                      </a>
                    </div>
                    <div class="info_text">
                      <div class="perf_title">${bookingDto.perfDto.perfName}</div>
                      <!-- <div class="perf_date">2022.10.13 ~ 2023.03.12</div> -->
                      <div class="perf_spot">${bookingDto.perfDto.location}</div>
                    </div>
                  </td>

                  <td class="booking_info">
                    <div class="b_i_titles">
                      <div>예약번호</div>
                      <div>관람일</div>
                      <div>관람회차</div>
                      <div>매수</div>
                    </div>
                    <div class="b_i_content">
                      <div class="green">${bookingDto.bookingTime}${bookingDto.id}</div>
                      <div>${bookingDto.perfRoundDto.showDate}</div>
                      <div>${bookingDto.perfRoundDto.showTime}</div>
                      <div>${bookingDto.ticketCnt}매</div>
                    </div>
                  </td>

                  <td class="status">
                    <c:choose>
                      <c:when test="${bookingDto.bookingStatus==1}">
                        예매완료(입금완료)
                      </c:when>
                      <c:otherwise>
                        예매취소
                      </c:otherwise>
                    </c:choose>
                  </td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
        </div>

        <div class="mylikes_box">
          <div class="box_top">
            <div class="box_name">찜목록</div>
            <div class="more_btn mylikes_more_btn">더보기></div>
          </div>
          <div class="mylikes_list" id="likes">
            <c:if test="${empty myLikedList}">
              <h2> 찜한 공연이 없습니다.</h2>
            </c:if>
            <c:forEach var="perfDto" items="${myLikedList}" begin="0" end="4" >
              <div class="mylikes">
                <div class="mylikes_content">
                  <img src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="">
                  <div class="my_perf_name">${perftDto.perfName}</div>
                  <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>"><button type="button" class="my_gobook_btn">예매하러가기</button></a>
                </div>
              </div>
            </c:forEach>
          </div>
        </div>
      </div>

    </div>
  </main>
  <footer class="footer">
    <div class="contents_area">
      <a href="<c:url value='/'/>"><div class="f_logo">아트온 로고</div></a>
      <div class="f_desc">
        <p class="f_title">아트온</p>
        <p>서울특별시 강남구 서초동 서울로 1길 1 대표 아트온</p>
        <p>사업자 등록번호: 1001-1314-15444 / 통신판매번호: 제 2002-00000호</p>
        <p>Copyright YM_ARTON INC.ALL Rights Reserved</p>
      </div>
      <div class="cst_num">
        <img src="<c:url value='/img/call.png'/>" alt="">
        <span>고객센터</span>
        <p class="f_number">1544-0000</p>
      </div>
    </div>
  </footer>
</div>
</body>

</html>
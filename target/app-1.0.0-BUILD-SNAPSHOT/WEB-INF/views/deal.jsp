<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('userId')==null ? '':pageContext.request.getSession(false).getAttribute('userId') }" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/deal.css'/>">
    <link rel="icon" href="<c:url value='/img/최종_바비콘.png'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="<c:url value='/js/deal.js'/>"></script>
</head>
<style>

</style>

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
            <img src="<c:url value='/img/art_pick/concert_1.jpg'/>" alt="">
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
                        <a href="<c:url value='/myPage/myPage'/>" >
                            <div class="my_img" id="<c:out value='${userId}'/> "></div>
                            <div class="text">마이페이지</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main class="main">
        <div class="contents_area">
            <!-- 상단이동 아이콘 삽입 -->
            <img src="<c:url value='/img/상단이동icon.png'/>" alt="" class="btn_gotop">
            <!--공연제목-->
            <div class="title_section">
                <div class="big_title">${perfDto.perfName}</div>
                <p class="item_txt">
                    <span class="item_date">${perfDto.perfStart} ~ ${perfDto.perfEnd}</span>
                    <span>
                            <span>${perfDto.location}</span>
                            <img src="<c:url value='/img/location_icon.png'/>" alt="" class="location_icon">
                        </span>
                </p>
            </div>

            <!--공연정보(포스터부분)-->
            <div class="item_section">
                <!--왼쪽-->
                <div class="poster_box">
                    <div class="poster_img">
                        <img src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="">
                    </div>
                    <div class="like_box">
                        <img src="<c:url value='/img/empty_heart.png'/>" alt="" class="empty_heart">
                        <img src="<c:url value='/img/full_heart.png'/>" alt="" class="full_heart">
                        <span class="likes_cnt">${perfDto.likeCnt}</span>
                        <span>Likes</span>
                        <c:choose>
                            <c:when test="${perfDto.avgRating>=1}">
                                <span> | </span>
                                <span>별점 : ${perfDto.avgRating}</span>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>

                </div>
                <!--오른쪽-->
                <div class="info_box">
                    <table class="item_table item_txt">
                        <tbody>
                        <tr>
                            <td class="item_sec_name">등급</td>
                            <td class="item_sec_body" id="contents_ratings">${perfDto.contentRating}</td>
                        </tr>
                        <tr>
                            <td class="item_sec_name">관람시간</td>
                            <td class="item_sec_body" id="running_time">${perfDto.runningTime}</td>
                        </tr>
                        <tr>
                            <td class="item_sec_name">출연</td>
                            <td class="item_sec_body" id="cast">${perfDto.cast}</td>
                        </tr>
                        <tr>
                            <td class="item_sec_name">가격</td>
                            <td class="item_sec_body" id="price">
                                <div class="price_box">
                                    <div class="seat">${perfDto.seatInfo}</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="item_sec_name">공연장</td>
                            <td class="item_sec_body" id="loca">${perfDto.location}</td>
                        </tr>
                        <tr>
                            <td class="item_sec_name">공연장 주소</td>
                            <td class="item_sec_body" id="loca_addr">${perfDto.locationAddr}</td>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${perfDto.discountRate == 0 || perfDto.discountRate ==null}">

                                </c:when>
                                <c:otherwise>
                                    <td class="item_sec_name">혜택</td>
                                    <td class="item_sec_body" id="discount_rate">${perfDto.discountRate}% 할인</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--예매하기섹션-->
<%--            <form action="/app/deal/book" method="post" onsubmit="return test_form(this)">--%>
                <div class="booking_section">
                    <div class="booking_process">
                        <div class="option_choice_sec">
                            <div class="choice_title">날짜선택</div>
                            <div class="option_box" id="option_date">
                                <input type="radio" name="perf_date" id="perf_date1" >
                                <input type="radio" name="perf_date" id="perf_date2" >
                                <label for="perf_date1" class="choice_btn show_date1">${roundByDate1[0].showDate}</label>
                                <label for="perf_date2" class="choice_btn show_date2">${roundByDate2[0].showDate}</label>
                            </div>
                        </div>

                        <div class="option_choice_sec">
                            <div class="choice_title">회차선택</div>
                            <div class="option_box" id="option_time">
<%--                                <c:forEach var="roundList" items="${roundList}"  varStatus="idx">--%>
<%--                                    <input type="radio" name="perf_time" id="perf_time1_1" class="perf_date1">--%>
<%--                                    <label for="perf_time1_1" class="choice_btn show_time perfDate1">${roundByDate1[0].showTime}</label>--%>

<%--                                </c:forEach>--%>
                                <c:forEach var="showTimeList" items="${showTimeList}" varStatus="idx">
                                    <input type="radio" name="perf_time" id="roundId${idx.index+1}">
                                    <label for="roundId${idx.index+1}" class="choice_btn2 show_time showTime${idx.index+1}" id="showTimeId${idx.index+1}">${showTimeList.showTime}</label>
                                </c:forEach>
<%--                                <input type="radio" name="perf_time" id="perf_time1_1" class="perf_date1">--%>
<%--                                <input type="radio" name="perf_time" id="perf_time1_2" class="perf_date1">--%>
<%--                                <input type="radio" name="perf_time" id="perf_time2_1" class="perf_date2">--%>
<%--                                <input type="radio" name="perf_time" id="perf_time2_2" class="perf_date2">--%>
<%--                                <label for="perf_time1_1" class="choice_btn show_time perfDate1">${roundByDate1[0].showTime}</label>--%>
<%--                                <label for="perf_time1_2" class="choice_btn show_time perfDate1" >${roundByDate1[3].showTime}</label>--%>
<%--                                <label for="perf_time2_1" class="choice_btn show_time perfDate2">${roundByDate2[0].showTime}</label>--%>
<%--                                <label for="perf_time2_2" class="choice_btn show_time perfDate2">${roundByDate2[3].showTime}</label>--%>
                            </div>
                        </div>

                        <div class="option_choice_sec">
                            <div class="choice_title">남은 좌석수</div>
                            <div class="option_box">
                                <div class="seat_ment">선택한 회차의 잔여석과 가격을 확인할 수 있어요!</div>
                                <div class="seat_stock_box">
                                    <c:forEach var="roundByDate1" items="${roundByDate1}" varStatus="idx">
                                        <input type="radio" name="seat_rate" id="roundId${roundByDate1.showDateIdx}${roundByDate1.showTimeIdx}${idx.index+1}" >
                                        <label for="roundId${roundByDate1.showDateIdx}${roundByDate1.showTimeIdx}${idx.index+1}" id="roundId${roundByDate1.showDateIdx}${roundByDate1.showTimeIdx}${idx.index+1}" data-seatcode="${roundByDate1.seatInvtId}" class="choice_btn3 seat_txt seatInvt${roundByDate1.showDateIdx}${roundByDate1.showTimeIdx}">${roundByDate1.seatClass} (잔여석 : <span class="seatSpan ">${roundByDate1.seatStock}</span>석)</span></label>
                                    </c:forEach>
                                    <c:forEach var="roundByDate2" items="${roundByDate2}" varStatus="idx">
                                        <input type="radio" name="seat_rate" id="roundId${roundByDate2.showDateIdx}${roundByDate2.showTimeIdx}${idx.index+1}" >
                                        <label for="roundId${roundByDate2.showDateIdx}${roundByDate2.showTimeIdx}${idx.index+1}" id="roundId${roundByDate2.showDateIdx}${roundByDate2.showTimeIdx}${idx.index+1}" data-seatcode="${roundByDate2.seatInvtId}" class="choice_btn3 seat_txt seatInvt${roundByDate2.showDateIdx}${roundByDate2.showTimeIdx}">${roundByDate2.seatClass} (잔여석 : <span class="seatSpan ">${roundByDate2.seatStock}</span>석)</span></label>
                                    </c:forEach>
<%--                                    <input type="radio" name="seat_rate" id="seat1_1_1">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat1_1_2">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat1_2_1">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat1_2_2">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat2_1_1">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat2_1_2">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat2_2_1">--%>
<%--                                    <input type="radio" name="seat_rate" id="seat2_2_2">--%>
<%--                                    <label for="seat1_1_1" class="choice_btn seat_txt perfTime1">${roundByDate1[0].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate1[0].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat1_1_2" class="choice_btn seat_txt perfTime1">${roundByDate1[1].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate1[1].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat1_2_1" class="choice_btn seat_txt perfTime2">${roundByDate1[2].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate1[2].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat1_2_2" class="choice_btn seat_txt perfTime2">${roundByDate1[3].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate1[3].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat2_1_1" class="choice_btn seat_txt perfTime3">${roundByDate2[0].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate2[0].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat2_1_2" class="choice_btn seat_txt perfTime3">${roundByDate2[1].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate2[1].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat2_2_1" class="choice_btn seat_txt perfTime4">${roundByDate2[2].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate2[2].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat2_2_2" class="choice_btn seat_txt perfTime4">${roundByDate2[3].seatClass} (잔여석 : <span class="seatSpan ">${roundByDate2[3].seatStock}</span>석)</span></label>--%>
<%--                                    <label for="seat_rate2" class="choice_btn seat_txt">A석 <span>100,000원</span><span class="green"> (잔여석 : <span>100</span>석)</span></label>--%>
<%--                                    <label for="seat_rate3" class="choice_btn seat_txt">R석 <span>70,000원</span><span class="green"> (잔여석 : <span>100</span>석)</span></label>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="booking_btn_sec">
                        <button type="submit" class="booking_btn" onclick="test_form()">예매하기</button>
                    </div>
                </div>
                <input type="hidden" id="ticket_num" name="ticket_num" value="">
                <!-- input type="hidden" value에 티켓개수 넣어서 보내기 -->
<%--            </form>--%>


            <!-- 탭(공연상세,리뷰,예매안내) -->
            <div class="datail_info_section">
                <ul class="tabs">
                    <li class="tab_title" data-tab="tab_per_notice">공연상세정보
                        <span></span>
                    </li>
                    <li class="tab_title" data-tab="tab_review">관람평
                        <span></span>
                    </li>
                    <li class="tab_title" data-tab="tab_book_info">예매/취소안내
                        <span></span>
                    </li>
                </ul>
                <!-- 공연상세 -->
                <div class="tab_content tab_current" id="tab_per_notice">
                    <div class="small_title">공지사항</div>
                    <div class="notice_ment">
                        <p>※유의</p>
                        <p>공연을 즐겁게 즐겨주세요!</p>
                    </div>

                    <div class="small_title">공연정보</div>
                    <div class="long_img_box">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (1).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (2).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (3).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (4).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (5).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (6).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (7).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (8).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (9).jpeg'/>" alt="" class="perfom_info_img">
                        <img src="<c:url value='/img/perfDetail/${perfDto.id} (10).jpeg'/>" alt="" class="perfom_info_img">
                    </div>

                    <div class="small_title">기획사 정보</div>
                    <table class="notice_table" id="organization_table">
                        <tbody>
                        <tr>
                            <th scope="row" class="table_title">기획사</th>
                            <td class="table_content">
                                주최/주관: <span>${perfDto.agency}></span>
<%--                                <br>--%>
<%--                                제작: <span>(주)아이두이엔티</span>--%>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="small_title">상품정보제공 고시</div>
                    <table class="notice_table" id="info_notice_table">
                        <tbody>
                        <tr>
                            <th scope="row" class="table_title">주최/기획</th>
                            <td class="table_content tb_left">${perfDto.agency}</td>
                            <th scope="row" class="table_title">소비자상담</th>
                            <td class="table_content tb_right">${perfDto.hotline}</td>
                        </tr>
                        <tr>
                            <th scope="row" class="table_title">주연</th>
                            <td class="table_content tb_left">${perfDto.cast}</td>
                            <th scope="row" class="table_title">관람등급</th>
                            <td class="table_content tb_right">${perfDto.contentRating}</td>
                        </tr>
                        <tr>
                            <th scope="row" class="table_title">공연시간</th>
                            <td class="table_content tb_left">${perfDto.runningTime}</td>
                            <th scope="row" class="table_title">공연장소</th>
                            <td class="table_content tb_right">${perfDto.location}</td>
                        </tr>
                        <tr>
                            <th scope="row" class="table_title">취소/환불방법</th>
                            <td colspan=3 class="table_content">
                                <p>취소 일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일보다 관람일 기준이 우선 적용되오니 유의해주시기 바랍니다.
                                    <br>
                                    단, 예매 후 7일 이내라도 취소시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.
                                    <br>
                                    (단, 상품에 따라 취소 정책이 달라질 수 있고, 각 공연이 공지하는 취소 정책이 우선 적용되므로, 예매 시 참고하시기 바랍니다.)
                                </p>
                                <div class="detail_info_box">
                                    <table class="detail_info_table">
                                        <colgroup>
                                            <col style ="width:50%">
                                            <col style ="width:50%">
                                        </colgroup>
                                        <tbody>
                                        <tr>
                                            <th scope="col" class="detail_tb_title">취소일</th>
                                            <th scope="col" class="detail_tb_title">취소수수료</th>
                                        </tr>
                                        <tr>
                                            <td class="detail_tb_content">예매 후 7일 이내</td>
                                            <td class="detail_tb_content">없음</td>
                                        </tr>
                                        <tr>
                                            <td class="detail_tb_content">예매 후 8일 ~ 관람일 10일 전까지</td>
                                            <td class="detail_tb_content">뮤지컬, 콘서트, 클래식 등: <span
                                                    class="red">장당 4,000원</span> /
                                                <br>연극, 전시 등: <span class="red">장당 2,000원</span>(단, 티켓 금액의
                                                10% 이내)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="detail_tb_content">관람일 9일 전 ~ 관람일 7일 전까지</td>
                                            <td class="detail_tb_content">티켓 금액의 10%</td>
                                        </tr>
                                        <tr>
                                            <td class="detail_tb_content">관람일 6일 전 ~ 관람일 3일 전까지</td>
                                            <td class="detail_tb_content">티켓 금액의 20%</td>
                                        </tr>
                                        <tr>
                                            <td class="detail_tb_content">관람일 2일 전 ~ 취소마감일시까지</td>
                                            <td class="detail_tb_content">티켓 금액의 30%</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <p>
                                    예매수수료는 예매 당일 밤 12시 이전 취소 시에만 환불되며, 그 이후 기간에는 환불되지 않습니다.
                                    <br>취소는 MY공연>예매확인/취소 에서 직접 취소 또는 고객센터(1544-0000)를 통해 취소 가능합니다.
                                    <br>티켓이 배송된 후에는 PC/모바일 취소가 불가, 취소마감시간 이전에 예스24 고객센터로 티켓이 반송되어야 취소 가능합니다.
                                    <br>(취소수수료는 티켓 도착일 기준으로 부과되며, 배송비는 환불되지 않습니다.)
                                    <br>각 상품별로 취소 정책이 다르게 적용될 수 있으니, 각 상품 안내 사항을 확인해주시기 바랍니다.
                                </p>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>

                <!-- 리뷰 -->
                <!-- form 태그는 어디서부터 어디까지 감싸야 하지..? -->
                <div class="tab_content" id="tab_review">
                    <div class="review_area">
                        <div class="left_line">
                            <div class="star_rating_area">
                                <div class="star_rating">
                                    <input type="radio" id="5-stars" name="rating" value="5" />
                                    <label for="5-stars" class="star">★</label>
                                    <input type="radio" id="4-stars" name="rating" value="4" />
                                    <label for="4-stars" class="star">★</label>
                                    <input type="radio" id="3-stars" name="rating" value="3" />
                                    <label for="3-stars" class="star">★</label>
                                    <input type="radio" id="2-stars" name="rating" value="2" />
                                    <label for="2-stars" class="star">★</label>
                                    <input type="radio" id="1-star" name="rating" value="1" />
                                    <label for="1-star" class="star">★</label>
                                </div>
                                <div class="rating_score">별점(<span id="input_rating">0</span>/5)</div>
                            </div>

                            <!-- <form action="#" id="review_frm"> -->
                            <div class="review_upload_area">
                                <div class="review_content_area">
                                    <textarea name="review_content" id="review_content" placeholder="내용을 작성해주세요.(최소 10자 / 최대 500자)" maxlength="500"></textarea>
                                    <div class="text_counter_area"><span id ="text_counter">0</span>자/500자</div>
                                </div>
                                <button id="btn_submit_review" name="review_up_btn">후기 등록하기</button>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                    <div class="review_list_area">
                        <!-- 리뷰에서 총 별점과 평균별점 보여주는 부분-->
                        <div class="rv_list_top">
                            <div class="rv_count_area">
                                <div class="rv_count_box">총 <span class="rv_count">0</span> 개 / </div>
                                <div class="rv_avg_box"> 평균별점 <span id="rv_avg">0</span></div>
                            </div>
                            <div class="rv_sort_area">
                                <div class="rv_sorting" id="rv_sort_curr">최신순</div>
                                <div class="rv_sorting" id="rv_sort_rate">평점순</div>
                            </div>
                        </div>
                        <div class="review_list">
                            <div class="rv_list_box">
                                <!--우리 아이디는 5~20 글자까지 받음 -->
                                <div class="rv_user_id">soy_****</div>
                                <div class="rv_uploaded_box">
                                    <div class="rv_uploaded rv_upload_date">2022-11-11</div>
                                    <div class="rv_uploaded rv_upload_content"> 아주 훌룡한 공연  입니다. 많이들 보러오세요~~ </div>
                                </div>
                                <div class="rv_right_box">
                                    <div class="rv_star_rating star5"></div>
                                    <div class="rv_modify_delete">
                                        <div class="rv_modify_btn">수정</div> |
                                        <div class="rv_delete_btn">삭제</div>
                                    </div>
                                </div>
                            </div>
                            <div class="rv_modify_box">
                                <div class="rv_modify">
                                    <div class="rv_user_id">soy_****</div>
                                    <div class="rv_update_content_area">
                                        <textarea name="rv_update" class="rv_update_content" maxlength="500" rows="4"></textarea>
                                    </div>
                                    <div class="rv_update_undo">
                                        <button class="rv_btns update_btn" name="rv_update_btn">등록</button>
                                        <button class="rv_btns undo_btn" name="rv_undo_btn">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 페이지네이션 파트!!!!!!!!!!!!!!! -->
                        <div class="pagination">
                            <a href="" class="prevpage">[이전]</a>
                            <a href="" class="page">1</a>
                            <a href="" class="page">2</a>
                            <a href="" class="page">3</a>
                            <a href="" class="page">4</a>
                            <a href="" class="page">5</a>
                            <a href="" class="endpage">[다음]</a>
                        </div>

                    </div>
                </div>

                <!-- 안내 -->
                <div class="tab_content" id="tab_book_info">
                    <div class="infos">
                        <div class="infos_box info_box1">
                            <div class="infos_title_sec">예매</div>
                            <div class="infos_left_sec">
                                <p>예매는 PC, 모바일, 고객센터 를 통해 신용카드, 가상계좌(무통장 입금), arton머니, arton상품권, 예치금 등으로 예매하실 수 있습니다.
                                    <br>(단, 상품마다 사용 가능한 결제 수단이 다르게 적용될 수 있으니 상품 상세페이지 안내 사항을 확인해주세요.)
                                    <br>무통장입금 결제 선택 시 입금 마감시간은 예매일 익일 밤 11시 29분까지입니다. 입금 마감시간 내 미입금 된 경우 예매가 자동
                                    취소됩니다.
                                    <br>(단, 상품에 따라 예매 당일 밤 11시 29분에 마감되는 경우가 있으니 예매 전후 반드시 확인해주시기 바랍니다.)
                                    <br>예매수수료는 다음과 같습니다.
                                </p>
                                <table class="infos_table">
                                    <colgroup>
                                        <col style ="width:30%">
                                        <col style ="width:40%">
                                        <col style ="width:30%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="col" class="detail_tb_title">장르</th>
                                        <th scope="col" class="detail_tb_title">pc / 모바일</th>
                                        <th scope="col" class="detail_tb_title">전화예매</th>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">콘서트, 뮤지컬, 클래식, 국악, 무용</td>
                                        <td class="infos_tb_content">장당 1,000원</td>
                                        <td rowspan="3" class="infos_tb_content">장당 2,000원</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">연극, 전시</td>
                                        <td class="infos_tb_content">장당 500원</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">체험, 행사</td>
                                        <td class="infos_tb_content">장당 500원</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="infos_box info_box2">
                            <div class="infos_title_sec">티켓수령방법</div>
                            <div class="infos_left_sec">
                                <p>
                                    <span><b>현장수령</b></span>
                                    <br>티켓은 예매자 본인 수령이 기본 원칙입니다.
                                    <br>공연 당일 예매확인서와 예매자의 신분증 을 지참하신 후 공연장 매표소에서 티켓을 수령하시면 됩니다.
                                </p>
                                <p>
                                    <span><b>배송</b></span>
                                    <br>배송을 선택하신 경우 예매완료(결제익일) 기준 5~7일 이내에 예매 시 입력하신 주소로 배송됩니다.(영업일 기준)
                                    <br>일괄배송의 경우 각 상품의 지정된 배송일자 기준으로 배송이 시작됩니다. 배송 시작일은 상세정보 및 예매공지사항에서 확인할 수 있습니다.
                                    <br>지역 및 배송 서비스 사정에 따라 배송사가 변경될 수 있으며, 배송일이 추가적으로 소요될 수 있습니다.(CJ대한통운, 우체국 외 1개
                                    업체)
                                    <br>* 티켓 수령과 관련된 정책은 상품별로 상이하니 자세한 내용은 각 상품 상세정보에서 확인 부탁드립니다.
                                </p>

                            </div>
                        </div>

                        <div class="infos_box info_box3">
                            <div class="infos_title_sec">취소 마감시간</div>
                            <div class="infos_left_sec">
                                <table class="infos_table">
                                    <colgroup>
                                        <col style ="width:50%">
                                        <col style ="width:50%">
                                    </colgroup>
                                    <tr>
                                        <th scope="col" class="detail_tb_title">공연 관람일</th>
                                        <th scope="col" class="detail_tb_title">취소 마감일</th>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">화요일~토요일</td>
                                        <td class="infos_tb_content">관람일 전일 평일 오후 5시</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">일요일 ~ 월요일</td>
                                        <td class="infos_tb_content">토요일 오전 11시</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">공휴일 및 공휴일 익일</td>
                                        <td class="infos_tb_content">
                                            공휴일 전일이 평일인 경우 - 오후 5시
                                            <br>공휴일 전일이 토요일, 일요일인 경우 - 토요일 오전 11시
                                            <br><span class="red">공휴일에는 예매 취소 불가</span>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    관람일 당일 예매하신 건은 취소, 변경, 환불 불가합니다.
                                    <br>배송이 시작된 티켓의 경우 티켓이 아트온 공연 고객센터로 취소마감시간 이전까지 반송되어야 취소 가능합니다.(취소수수료는 도착일 기준으로
                                    부과됩니다.)
                                    <br>결제수단을 복수로 선택한 경우 인터넷으로 부분취소가 불가하오니, 고객센터로 문의해주시기 바랍니다.
                                </p>
                                <p class="red">
                                    ※일부 공연에 한해, 취소 마감 정책이 달라질 수 있습니다.
                                    <br>각 상품 상세페이지에 안내되어 있는 취소 정책이 우선 적용되오니, 반드시 예매 전 확인해주시기 바랍니다.
                                </p>
                            </div>
                        </div>

                        <div class="infos_box info_box4">
                            <div class="infos_title_sec">취소 수수료</div>
                            <div class="infos_left_sec">
                                <table class="infos_table">
                                    <colgroup>
                                        <col style ="width:40%">
                                        <col style ="width:60%">
                                    </colgroup>
                                    <tr>
                                        <th scope="col" class="detail_tb_title">취소일</th>
                                        <th scope="col" class="detail_tb_title">취소 수수료</th>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">예매 후 7일 이내</td>
                                        <td class="infos_tb_content">없음</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">예매 후 8일 ~ 관람일 10일 전까지</td>
                                        <td class="infos_tb_content">뮤지컬, 콘서트, 클래식 : 장당 4,000원 / 연극, 전시 : 장당
                                            2,000원(단, 티켓 금액의 10% 이내)</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">관람일 9일 전 ~ 관람일 7일 전까지</td>
                                        <td class="infos_tb_content">티켓 금액의 10%</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">관람일 6일 전 ~ 관람일 3일 전까지</td>
                                        <td class="infos_tb_content">티켓 금액의 20%</td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">관람일 2일 전 ~ 취소마감일시까지</td>
                                        <td class="infos_tb_content">티켓 금액의 30%</td>
                                    </tr>
                                </table>
                                <p>
                                    예매 후 7일 이내라도 취소시점이 관람일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.
                                    <br>관람일 당일 취소 가능한 상품의 경우 관람일 당일 취소 시 티켓금액의 90%가 부과됩니다.
                                    <br><span class="red">상품의 특성에 따라 취소수수료 정책이 달라질 수 있습니다.(각 상품 예매 시 취소수수료
                                            확인)</span>
                                </p>
                            </div>

                        </div>

                        <div class="infos_box info_box5">
                            <div class="infos_title_sec">환불</div>
                            <div class="infos_left_sec">
                                <p>예매수수료는 예매 당일 밤 12시 이전까지 환불되며, 그 이후 기간에는 환불되지 않습니다.
                                    <br>배송 및 반송처리 된 티켓의 배송비는 환불되지 않습니다.
                                </p>
                                <table class="infos_table">
                                    <colgroup>
                                        <col style ="width:20%">
                                        <col style ="width:80%">
                                    </colgroup>
                                    <tr>
                                        <th scope="col" class="detail_tb_title">결제 수단</th>
                                        <th scope="col" class="detail_tb_title">환불 안내</th>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">신용카드</td>
                                        <td class="infos_tb_content">
                                            <p>일반적으로 취소완료 되고 4~5일(토, 공휴일 제외) 후 카드 승인 취소가 확인됩니다.
                                                <br>취소시점에 따라 취소수수료와 예매수수료, 배송 받으신 경우 배송비를 제외한 금액만큼 환불 처리 됩니다.
                                                <br>(부분 취소 시에는 잔여 티켓 금액 + 수수료 등을 제외하고 환불 처리 됩니다.)
                                                <br>각 카드사의 취소 정책에 따라 승인취소 및 환급일에 차이가 있을 수 있습니다.
                                                <br>자세한 사항은 카드사로 문의 바랍니다.
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="infos_tb_content">무통장입금</td>
                                        <td class="infos_tb_content">
                                            <p>예매 취소 시 반드시 환불 받으실 계좌번호와 은행명을 입력하세요.
                                                <br>취소수수료,예매수수료와 배송 받으신 경우 배송비를 제외한 후 환불 처리됩니다.
                                                <br>취소 후 환불 처리는 영업일 기준 3~5일 정도 소요됩니다.
                                                <br>환불진행상태는 마이페이지>예매확인/취소 상세내역에서 확인할 수 있습니다.
                                            </p>

                                            <p class="red">
                                                * 배송 받은 티켓의 취소를 위해 고객센터로 발송하실 때, 환불 받으실 계좌 정보를 기입하여 보내주시면 보다 빠른 환불
                                                처리가 가능합니다.
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
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
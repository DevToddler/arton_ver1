<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String cateCode = request.getParameter("cateCode")==null?"0":request.getParameter("cateCode"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/rank.css'/>">
    <link rel="icon" href="./img/최종_바비콘.png">
    <link rel="stylesheet" href="<c:url value='/css/datepicker.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="<c:url value='/js/h_f.js'/>"></script>
    <script src="<c:url value='/js/rank.js'/>"></script>
</head>
<body>
<div id="wrap">
    <div class="ham_box">
        <div class="side_ham_box">
            <div class="side_hamberg">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
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
                <a href="<c:url value='/cate/cate?cateCode=1'/>">클래식</a>
            </li>
            <li>
                <a href="<c:url value='/cate/cate?cateCode=1'/>">전시</a>
            </li>
            <li>
                <a href="<c:url value='/cate/cate?cateCode=1'/>">아동</a>
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
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
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
            <div class="rank_area">
                <h2 class="rank_title">랭킹</h2>
                <ul class="rank_menu">
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank'/>">전체</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=1'/>">콘서트</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=2'/>">뮤지컬</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=3'/>">연극</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=4'/>">클래식/무용</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=5'/>">전시/행사</a></li>
                    <li class="rank_li"><a class="menu_a" href="<c:url value='/rank/rank?cateCode=6'/>">아동/가족</a></li>
                </ul>
                <div class="rank_date">
                    <div class="date_cate">
                        <div id="rank_day" class="date">
                            <a href="${pageContext.request.contextPath}/rank/rank?cateCode=<%=cateCode%>&period=d">
                                <div class="high_bar"></div>
                                일간
                            </a>
                        </div>
                        <div id="rank_week" class="date">
                            <a href="${pageContext.request.contextPath}/rank/rank?cateCode=<%=cateCode%>&period=w">
                                <div class="high_bar"></div>
                                주간
                            </a>
                        </div>
                        <div id="rank_month" class="date">
                            <a href="${pageContext.request.contextPath}/rank/rank?cateCode=<%=cateCode%>&period=m">
                                <div class="high_bar"></div>
                                월간
                            </a>
                        </div>
                        <div id="rank_year" class="date">
                            <a href="${pageContext.request.contextPath}/rank/rank?cateCode=<%=cateCode%>&period=y">
                                <div class="high_bar"></div>
                                연간
                            </a>
                        </div>
                        <input type="text" id="from_date" class="date_pick">
                    </div>
                </div>
                <div class="high_rank">
                    <c:forEach var="perfDto" items="${rankList}" varStatus="stat" begin="0" end="2">
                        <div class="high_rank_box">
                            <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                                <div class="rank_item_box">
                                    <img class="rank_item" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="">
                                    <div class="rank_mark">${stat.index + 1}위</div>
                                </div>
                                <p class="item_title">${perfDto.perfName}</p>
                                <div class="item_info">
                                    <p>${perfDto.perfStart} ~ ${perfDto.perfEnd}</p>
                                    <p>${perfDto.location}</p>
                                </div>
                                <div class="indi_area">
                                        <%--                                    <div class="reservate_percen">38.5%</div>예매율 나중에 추가할 부분--%>
                                    <img src="<c:url value='/img/rank/love_icon.png'/>" alt=""> <p>${perfDto.likeCnt}</p><%-- 찜하기 한 회수 --%>
                                            <c:if test="${perfDto.avgRating == 1}"><img src="<c:url value='/img/rank/star2_1.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                            <c:if test="${perfDto.avgRating == 2}"><img src="<c:url value='/img/rank/star2_2.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                            <c:if test="${perfDto.avgRating == 3}"><img src="<c:url value='/img/rank/star2_3.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                            <c:if test="${perfDto.avgRating == 4}"><img src="<c:url value='/img/rank/star2_4.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                            <c:if test="${perfDto.avgRating == 5}"><img src="<c:url value='/img/rank/star2_5.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <ul class="rank_item_list">
                    <c:forEach var="perfDto" items="${rankList}" varStatus="stat" begin="3" end="14">
                        <li class="rank_list_box">
                            <div class="list_rank">${stat.index + 1}위</div>
                            <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                                <div class="list_img_box">
                                    <img class="list_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt=""> <%-- 이미지 경로 --%>
                                </div>
                            </a>
                            <div class="list_title_box">
                                <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                                    <p class="list_title">${perfDto.perfName}</p>
                                </a>
                                <div class="wish_total">
                                    <img src="<c:url value='/img/full_heart.png'/>" style="margin-right: 8px;width: 13px; height: 10px;" alt="찜하기 아이콘"><span>${perfDto.likeCnt}</span>
                                    <c:if test="${perfDto.avgRating == 1}"><img src="<c:url value='/img/rank/star2_1.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                    <c:if test="${perfDto.avgRating == 2}"><img src="<c:url value='/img/rank/star2_2.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                    <c:if test="${perfDto.avgRating == 3}"><img src="<c:url value='/img/rank/star2_3.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                    <c:if test="${perfDto.avgRating == 4}"><img src="<c:url value='/img/rank/star2_4.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                    <c:if test="${perfDto.avgRating == 5}"><img src="<c:url value='/img/rank/star2_5.png'/>" style="width: 88px;margin-left: 30px;" alt="별점 아이콘"></c:if> <%-- 별점이 들어와야함--%>
                                </div>
                            </div>
                            <div class="list_info">
                                <p>${perfDto.perfStart} ~ ${perfDto.perfEnd}</p>
                                <p>${perfDto.location}</p>
                            </div>
                                <%--                            <div class="reservate_percen">20.5%</div> 예매율 -> 나중에 추가 --%>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="contents_area">
            <a href="<c:url value='/'/>"><div class="f_logo">아트온 로고</div></a>
            <div class="f_desc">
                <p class="f_title">아트온</p >
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
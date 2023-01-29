<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="<c:url value='/js/cate_item_list.js'/>"></script>
    <script src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/cate.js'/>"></script>


    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/cate.css'/>">
    <link rel="icon" href="<c:url value='/img/최종_바비콘.png'/>">


</head>
<script></script>
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
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <div class="logo">아트온 로고<a href="<c:url value='/'/>"></a></div>
            <ul class="menu_ul">
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=1'/>">콘서트</a>
                    <span></span>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=2'/>">뮤지컬</a>
                    <span></span>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=3'/>">연극</a>
                    <span></span>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=4'/>">클래식</a>
                    <span></span>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=5'/>">전시</a>
                    <span></span>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=6'/>">아동</a>
                    <span></span>
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
        <img src="<c:url value='/img/상단이동icon.png'/>" alt="" class="btn_gotop">
        <div class="main_banner">
            <ul class="banner_box">
                <c:forEach var="perfDto" items="${list1}" begin="0" end="4" varStatus="idx">
                    <li class="banner">
                        <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/> ">
                            <img src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>"  alt="poster">
                        </a>
                    </li>
                </c:forEach>
            </ul>
            <img class="slide slide_prev" src="<c:url value='/img/slide_prev.png'/>" alt="‹">
            <img class="slide slide_next" src="<c:url value='/img/slide_next.png'/>" alt="›">
        </div>
        <div class="whats_hot contents_area">
            <div class="hot_sec_title">
                <div class="title_text">WHAT'S
                    <span>HOT</span>
                </div>
            </div>
            <ul class="hot_list">

                <c:forEach var="perfDto" items="${list2}" begin="0" end="9" varStatus="idx">
                    <li class="hot_sec">
                        <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/> ">
                            <img src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="concert">
                            <c:choose>
                                <c:when test="${perfDto.discountRate == 0 || perfDto.discountRate == null}">

                                </c:when>
                                <c:otherwise>
                                    <div class="hot_sec_dis_box">
                                        <div class="dis_txt">${perfDto.discountRate}%</div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            <div class="hot_sec_txt_box">
                                <div class="hot_per_name">${perfDto.perfName}</div>
                                <div class="hot_per_place">${perfDto.location}</div>
                                <c:choose>
                                    <c:when test="${perfDto.discountRate == 0 || perfDto.discountRate == null}">

                                    </c:when>
                                    <c:otherwise>
                                        <div class="disc_msg">아트온 회원할인 ${perfDto.discountRate}%</div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div class="ranking_recommend">
            <div class="ranking">
                <div class="ranking_box">
                    <div class="title_box">
                        <span class="ranking_title">WEEKLY RANKING</span>
                        <a href="<c:url value='/rank/rank'/>"><span class="more_info">+</span></a>
                    </div>
                        <ul class="ranking_box">
                            <c:forEach var="perfDto" items="${list2}" begin="0" end="4" varStatus="idx">
                            <li class="r_box_list">
                                <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/> ">
                                <div class="ranking_num">${idx.index+1}위</div>
                                <img src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="perf" class="ranking_img">
                                <div class="ranking_txt">
                                    <div class="r_txt_1">
                                        <p>${perfDto.perfName}</p>
                                    </div>
                                    <div class="r_txt_2">
                                        <p>
<%--                                            ${perfDto.perfStart} ~ ${perfDto.perfEnd}--%>
                                            <br>
                                            ${perfDto.location}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="recommend">
                <div class="what_about_box">
                    <div class="what_about_title">WHAT ABOUT THIS?</div>
                    <div class="what_about_body">
                        <ul class="w_a_per_slide">
                            <li class="w_a_per_li">
                                <div class="w_a_wrap">
                                    <a href="<c:url value='/deal/deal?perfCode=1077'/>" class="w_a_link">
                                        <div class="w_a_txtbox">
                                            <div class="w_a_t_text txtbox_title">[화원]</div>
                                            <div class="w_a_t_text txtbox_subtitle">2022.11.25 ~ 2022.12.04</div>
                                        </div>
                                        <img class="w_a_img" src="<c:url value='/img/img_slide/img_slide4.jpg'/>" alt="">
                                    </a>
                                </div>
                            </li>
                            <li class="w_a_per_li">
                                <div class="w_a_wrap">
                                    <a href="<c:url value='/deal/deal?perfCode=1065'/>" class="w_a_link">
                                        <div class="w_a_txtbox">
                                            <div class="w_a_t_text txtbox_title">[난쟁이들]</div>
                                            <div class="w_a_t_text txtbox_subtitle">2022.01.25 ~ 2022.04.10</div>
                                        </div>
                                        <img class="w_a_img" src="<c:url value='/img/img_slide/img_slide3.jpg'/>" alt="">
                                    </a>
                                </div>
                            </li>
                            <li class="w_a_per_li">
                                <div class="w_a_wrap">
                                    <a href="<c:url value='/deal/deal?perfCode=1028'/>" class="w_a_link">
                                        <div class="w_a_txtbox">
                                            <div class="w_a_t_text txtbox_title">[Earmuffs]</div>
                                            <div class="w_a_t_text txtbox_subtitle">2022.12.29 ~ 2022.12.29</div>
                                        </div>
                                        <img class="w_a_img" src="<c:url value='/img/img_slide/img_slide2.jpg'/>" alt="">
                                    </a>
                                </div>
                            </li>
                            <li class="w_a_per_li">
                                <div class="w_a_wrap">
                                    <a href="<c:url value='/deal/deal?perfCode=1091'/>" class="w_a_link">
                                        <div class="w_a_txtbox">
                                            <div class="w_a_t_text txtbox_title">[줄리엣과 줄리엣]</div>
                                            <div class="w_a_t_text txtbox_subtitle">2022.06.14 ~ 2022.07.07</div>
                                        </div>
                                        <img class="w_a_img" src="<c:url value='/img/img_slide/img_slide1.jpg'/>" alt="">
                                    </a>
                                </div>
                            </li>
                        </ul>
                        <ul class="w_a_per_txt_list">
                            <li class="per_title_item">
                                <span class = "w_a_t_text list_text">[화원]</span>
                                <span class = "blind"></span>
                            </li>
                            <li class="per_title_item">
                                <span class = "w_a_t_text list_text">[난쟁이들]</span>
                                <span class = "blind"></span>
                            </li>
                            <li class="per_title_item">
                                <span class = "w_a_t_text list_text">[Earmuffs]</span>
                                <span class = "blind"></span>
                            </li>
                            <li class="per_title_item">
                                <span class = "w_a_t_text list_text">[줄리엣과 줄리엣]</span>
                                <span class = "blind"></span>
                            </li>

                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <div class="arton_pick comtents_area">
            <div class="picks_title">
                <div class="picks_title_text">
                    <span>ART</span><span>oN</span><span>'S PICKs</span>
                </div>
            </div>
            <ul class="picks_list">
                <c:forEach var="perfDto" items="${list3}" begin="0" end="7" varStatus="idx">
                <li class="picks_box">
                    <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                        <div class="picks_body">
                            <div class="picks_sec">
                                <div class="picks_img_box">
                                    <img src="<c:url value='/img/arton_pick/${perfDto.cate}/${idx.index+1}.jpg'/>" alt="">
                                </div>
                                <div class="msg_box">
                                    <div class="msg_txt"></div>
                                </div>
                            </div>
                            <div class="picks_txt">
                                <div class="picks_per_name">${perfDto.perfName}</div>
                                <div class="picks_per_pla">‹${perfDto.location}›</div>
                            </div>
                        </div>
                    </a>
                </li>
                </c:forEach>

            </ul>
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
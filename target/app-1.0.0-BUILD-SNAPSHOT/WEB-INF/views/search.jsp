<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>
    <link rel="icon" href="./img/최종_바비콘.png">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/search.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="<c:url value='/js/h_f.js'/>"></script>
    <script src="<c:url value='/js/search.js'/>"></script>
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
            <a href="#"><div class="ham_rank">랭킹</div></a>
            <img src="./img/art_pick/concert_1.jpg" alt="">
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
                    <a href="<c:url value='/cate/cate?cateCode=1'/>">클래식</a>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=1'/>">전시</a>
                </li>
                <li>
                    <a href="<c:url value='/cate/cate?cateCode=1'/>">아동</a>
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
            <div class="results_area">
                <div>'<span id="result">웃는남자</span>'에 대한 결과 입니다.</div>
            </div>
            <table class="result_head">
                <thead>
                <tr>
                    <th style="width: 150px">포스터</th>
                    <th style="width: 440px">제목</th>
                    <th style="width: 330px">날짜</th>
                    <th>공연장</th>
                </tr>
                </thead>
            </table>
            <div class="result_table">
                <div class="result_box">
                    <a class="result_img" href="#">
                        <img src="./img/rank/rank_1.jpg" alt="포스터">
                    </a>
                    <div class="result_title_box">
                        <a href="#">
                            2022 HAPPY CHANYEOL-DAY
                        </a>
                    </div>
                    <div class="result_date">
                        2022.12.01~2022.12.01
                    </div>
                    <div class="result_place">
                        건국대학교 새천년관 대공연장
                    </div>
                </div>
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
                <img src="./img/call.png" alt="">
                <span>고객센터</span>
                <p class="f_number">1544-0000</p>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
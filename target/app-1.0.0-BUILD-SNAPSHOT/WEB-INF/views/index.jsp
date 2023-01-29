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
  <link rel="stylesheet" href="<c:url value='/css/index.css'/>">
  <link rel="icon" href="<c:url value='/img/최종_바비콘.png'/>">
  <script src="<c:url value='/js/item_list.js'/>"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="<c:url value='/js/h_f.js'/>"></script>
  <script src="<c:url value='/js/index.js'/>"></script>
</head>

<body>
<div id="wrap">
  <img src="<c:url value='/img/상단이동icon.png'/>" alt="" class="btn_gotop">
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
    <div class="main_slide">
      <c:forEach var="perfDto" items="${list}" varStatus="stat" begin="0" end="5">
        <div class="main_box">
          <div class="first_section f_${stat.index+1}">
            <div class="top_content">
              <p class="top_desc">${perfDto.perfName}</p>
              <p class="bottom_desc">${perfDto.perfStart} ~ ${perfDto.perfEnd}</p>
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>"><img class="main_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터"></a>
            </div>
            <a class="buy_button" href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">예매하기</a>
          </div>
          <div class="second_section s_${stat.index+1}"></div>
        </div>
      </c:forEach>
      <div class="img_indi">
        <img class="left_icon" src="<c:url value='/img/left.png'/>" alt="">
        <div class="indi_section">
          <c:forEach var="perfDto" items="${list}" varStatus="stat" begin="0" end="5">
            <img class="indi" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
          </c:forEach>
        </div>
        <img class="right_icon" src="<c:url value='/img/right.png'/>" alt="">
      </div>
    </div>
    <div class="contents_area">
      <div class="new_section">
        <h2>NEW OPEN</h2>
        <div class="new_main_img new_img">
          <a href="<c:url value='/deal/deal?perfCode=1062'/>">
            <img class="first_item_img" src="<c:url value='./img/new/new1.jpg'/>" alt="포스터">
            <div class="discount_icon">10%</div>
            <div class="date_circle">Today</div>
            <div>
              <div class="first_title">라흐마니노프</div>
              <div>"당신은 이미 사랑받는 사람입니다"</div>
            </div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1065'/>">
            <img class="side_img" src="<c:url value='/img/new/new2.jpg'/>" alt="포스터">
            <div class="side_discount_icon">10%</div>
            <div class="side_desc">
              "내숭은 벗어던진 발칙한 이야기!!"
            </div>
            <div class="side_date_circle">D-20</div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1059'/>">
            <img class="side_img" src="<c:url value='/img/new/new3.jpg'/>" alt="포스터">
            <div class="side_discount_icon">20%</div>
            <div class="side_desc">
              "모두가 기다려온 완벽한 뮤지컬!"
            </div>
            <div class="side_date_circle">D-30</div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1055'/>">
            <img class="side_img" src="<c:url value='/img/new/new4.jpg'/>" alt="포스터">
            <div class="side_discount_icon">10%</div>
            <div class="side_desc">
              "어쩌면, 우연이 아닌 필연"
            </div>
            <div class="side_date_circle">D-5</div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1087'/>">
            <img class="side_img" src="<c:url value='/img/new/new5.jpg'/>" alt="포스터">
            <div class="side_discount_icon">5%</div>
            <div class="side_desc">
              "다시 오지 않을 이 순간"
            </div>
            <div class="side_date_circle">D-3</div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1097'/>">
            <img class="side_img" src="<c:url value='/img/new/new6.jpg'/>" alt="포스터">
            <div class="side_discount_icon">10%</div>
            <div class="side_desc">
              "신기해. 지금 우리가 여기 있는게"
            </div>
            <div class="side_date_circle">D-3</div>
          </a>
        </div>
        <div class="new_img">
          <a href="<c:url value='/deal/deal?perfCode=1093'/>">
            <img class="side_img" src="<c:url value='/img/쉬어매드니스.jpg'/>" alt="포스터">
            <div class="side_discount_icon">10%</div>
            <div class="side_desc">
              "오늘. 이곳에서 살인사건이 일어납니다 그리고 당신은 모든것을
              지켜보게 됩니다."
            </div>
            <div class="side_date_circle">D-1</div>
          </a>
        </div>
      </div>
      <div class="art_pick_section">
        <h2>ARToN's PICKs</h2>
        <div class="pick_area">
          <div class="pick_info">
            <a href="<c:url value='/deal/deal?perfCode=1001'/>"><img class="pick_img" src="<c:url value='/img/art_pick/concert_1.jpg'/>" alt="포스터"></a>
            <div class="pick_desc">
              “ 겨울, 포근함은 여기야… ”
            </div>
          </div>
          <div class="pick_info">
            <a href="<c:url value='/deal/deal?perfCode=1034'/>"><img class="pick_img" src="<c:url value='/img/art_pick/musical_1.jpg'/>" alt="포스터"></a>
            <div class="pick_desc">
              “ 우리의 맹세, 이 칼 앞에 , 우린 비더슈탄트 앞에, ”
            </div>
          </div>
          <div class="pick_info">
            <a href="<c:url value='/deal/deal?perfCode=1066'/>"><img class="pick_img" src="<c:url value='/img/art_pick/play_1.jpg'/>" alt="포스터"></a>
            <div class="pick_desc">
              ” 제…. 기억을 ….(지워)주세요….”
            </div>
          </div>
          <div class="pick_info">
            <a href="<c:url value='/deal/deal?perfCode=1035'/>"><img class="pick_img" src="<c:url value='/img/art_pick/musical_2.jpg'/>" alt="포스터"></a>
            <div class="pick_desc">
              “ 세 여성이 펼쳐내는, 인생의 파도같은 이야기 ”
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="sub_slide_section">
      <img src="<c:url value='/img/sub_left.png'/>" alt="left" id="sub_left">
      <a href="<c:url value='/deal/deal?perfCode=1048'/>"><div class="sub_banner banner1" style="background: url(<c:url value='/img/sub_banner1.png'/>) no-repeat center / cover"></div></a>
      <a href="<c:url value='/deal/deal?perfCode=1051'/>"><div class="sub_banner banner2" style="background: url(<c:url value='/img/sub_banner2.png'/>) no-repeat center / cover"></div></a>
      <a href="<c:url value='/deal/deal?perfCode=1044'/>"><div class="sub_banner banner3" style="background: url(<c:url value='/img/sub_banner3.png'/>) no-repeat center / cover"></div></a>
      <img src="<c:url value='/img/sub_right.png'/>" alt="right" id="sub_right">
      <div class="sub_indi"></div>
    </div>
    <div class="contents_area">
      <div class="rank_section">
        <h2>RANK</h2>
        <div class="rank_menu">
          <div class="rank_menu_area">
            <div class="rank_item rank_item_chk">#콘서트</div>
            <div class="rank_item">#뮤지컬</div>
            <div class="rank_item">#연극</div>
            <div class="rank_item">#클래식</div>
            <div class="rank_item">#전시</div>
            <div class="rank_item">#아동</div>
          </div>
        </div>
        <div class="rank_article dis_flex">
          <c:forEach var="perfDto" items="${rankList1}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="rank_article">
          <c:forEach var="perfDto" items="${rankList2}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="rank_article">
          <c:forEach var="perfDto" items="${rankList3}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="rank_article">
          <c:forEach var="perfDto" items="${rankList1}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="rank_article">
          <c:forEach var="perfDto" items="${rankList2}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="rank_article">
          <c:forEach var="perfDto" items="${rankList3}" begin="0" end="2" varStatus="state">
            <div class="rank_cate">
              <a href="<c:url value='/deal/deal?perfCode=${perfDto.id}'/>">
                <div class="rank_img_area">
                  <div class="rank_img_box" style="background-image: url(<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/> )">
                  </div>
                  <img class="rank_front_img" src="<c:url value='/img/perfPoster/${perfDto.id}.jpeg'/>" alt="포스터">
                </div>
                <div class="rank_info">${perfDto.perfName}</div>
                <p>${perfDto.location}</p>
                <div class="ranking_icon">${state.index + 1}위</div>
              </a>
            </div>
          </c:forEach>
        </div>
        <div class="art_button" >
          <a href="<c:url value='/rank/rank'/>" class="btn_desc">랭킹 더보기+</a>
        </div>
      </div>
    </div>
    <div class="media_section">
      <div class="media_info">
        <div class="media_attention"><span>FOUCUS ON</span></div>
        <a href="<c:url value='/deal/deal?perfCode=1098'/>">
          <div class="media_title">
            <p>연극</p>
            <p>셜럭홈즈</p>
          </div>
        </a>
        <div class="media_comment">
          <a href="<c:url value='/deal/deal?perfCode=1098'/>">
            <p>내가 죽으면 이야기가 완성된다</p>
            <p>주어진 시간은 72시간</p>
          </a>
        </div>
      </div>
      <iframe src="https://www.youtube.com/embed/1vyN6frMq9I" allowfullscreen></iframe>
    </div>
    <div class="review_section">
      <h2>REVIEW</h2>
      <div class="btn" id="review_r_button"></div>
      <div class="btn" id="review_l_button"></div>
      <div class="review_area">
        <div class="review_img_box review_item1">
          <a href="<c:url value='/deal/deal?perfCode=1097'/>">
            <div class="review_img" style="background: url(<c:url value='/img/new/new6.jpg'/>) no-repeat center / contain">
              <div class="review">
                돌고 돌수록 이퀄의 매력은 더욱 더 드러나는것 같습니다. 자첫의 놀라움이 재관람하며 디테일 찾는 맛에 계속해서 감탄하게 되는 극이었어요.
              </div>
            </div>
          </a>
        </div>
        <div class="review_img_box review_item2">
          <a href="<c:url value='/deal/deal?perfCode=1077'/>">
            <div class="review_img" style="background: url(<c:url value='/img/review_2.jpg'/>) no-repeat center / contain">
              <div class="review">
                어릴 때 재밌게 읽었던 〈비밀의 화원〉을 바탕으로 한 이야기라 더 흥미롭게 봤어요. 여전히 화원이 아이들에게 서로 위로하고 희망을 갖는 공간이 되는 것 같아 좋더라고요. 이런 공간이 어디에나, 누구에게나 있으면 좋을 것 같아요. 세 친구들만의 비밀의 화원이 점점 더 넓어지길 바라게 됩니다.
              </div>
            </div>
          </a>
        </div>
        <div class="review_img_box review_item3">
          <a href="<c:url value='/deal/deal?perfCode=1070'/>">
            <div class="review_img" style="background: url(<c:url value='/img/review_3.jpg'/>) no-repeat center / contain">
              <div class="review">
                인생 첫 연극이었는데 후회없는 최고의 선택ㅠㅠ 지인의 추천으로 보게 됐는데 와...진짜 너무 재미있고 또 보러가고 싶을 정도에요!!
              </div>
            </div>
          </a>
        </div>
        <div class="review_img_box review_item4">
          <a href="<c:url value='/deal/deal?perfCode=1067'/>">
            <div class="review_img" style="background: url(<c:url value='/img/arton_pick/연극/2.jpg'/>) no-repeat center / contain">
              <div class="review">
                진짜 엄청났어요. 황정민 배우님의 연기를 실제로 보다니.. 영광스럽고 황홀한 기분이에요ㅜㅜ 연극이 끝났는데 몸이 부들부들 떨릴정도로 몰입감이 끝내주고 계속 눈 앞에 황정민 배우님의 모습이 떠오르네요. 온 힘을 다해 열연해주셔서 감사드리고 꼭 다시 보고싶어요!
              </div>
            </div>
          </a>
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
        <img src="<c:url value='/img/call.png'/>" alt="">
        <span>고객센터</span>
        <p class="f_number">1544-0000</p>
      </div>
    </div>
  </footer>
</div>
</body>

</html>

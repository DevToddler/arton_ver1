// test_form 백업
// function test_form(frm){
//
//     let ticket_num =  +prompt("선택하신 등급의 티켓 개수를 입력해주세요. 최대 개수는 4장 입니다");
//
//     console.log("111: " + (ticket_num > 0 && ticket_num < 5))
//
//     if(ticket_num > 0 && ticket_num < 5){
//
//         frm.ticket_num.value = ticket_num
//         // console.log(ticket_num);
//
//         let seat = document.getElementsByClassName("choice_btn3 btn_chk");
//         // console.log(seat[0].dataset.seatcode)
//         frm.seatInvtId.value = seat[0].dataset.seatcode
//
//
//         let confirm_msg = confirm("예매하시겠습니까?")
//         if(confirm_msg == true){
//             alert("예매가 완료되었습니다.")
//             return true;
//         }
//         else{
//             return false;
//         }
//
//     }else{
//         alert('잘못된 입력입니다.')
//         return false;
//     }
// }


function test_form(){
    let isLogin = document.getElementsByClassName("my_img");
    let userId = isLogin[0].getAttribute("id");
    let uri = window.location.search;
    console.log(uri)
    console.log(userId)
    if(null == userId || userId.trim().length == 0){
        alert("로그인 후 이용가능합니다.")
        return
    }

    let ticket_num =  +prompt("선택하신 등급의 티켓 개수를 입력해주세요. 최대 개수는 4장 입니다");

    console.log("111: " + (ticket_num > 0 && ticket_num < 5))
    let seatInvtId;
    if(ticket_num > 0 && ticket_num < 5){
        let seat = document.getElementsByClassName("choice_btn3 btn_chk");
        seatInvtId = seat[0].dataset.seatcode;
        console.log(seatInvtId)
        console.log(ticket_num)

    }else if(ticket_num>=5){
        alert("한번에 최대 4장 까지 예매 가능합니다.")
    }else {
        alert("잘못된 입력입니다.")
    }

    let confirm_msg = confirm("예매하시겠습니까?")
    if(confirm_msg == true){
        $.ajax({
            url: '/app/deal/book',
            type : 'post',
            data : {
                ticketCnt : ticket_num,
                seatInvtId : seatInvtId
            },
            success: function (cnt){
                if (cnt == 0) {
                    alert("예매하지 못하였습니다. 남은 좌석수를 확인해주세요.")
                } else if(cnt==1){
                    alert("예매가 완료되었습니다.");
                    location.href = "/app/deal/deal"+uri;
                } else {
                    alert("잘못된 접근입니다.")
                }

            },
            error: function (request, status, error) {
                // alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                alert("에러입니다.")
            }
        })
    }
    else{
        alert("예매를 취소했습니다.")
    }



}


$(document).ready(function(){

    // btn 날짜
    $('.choice_btn').click(function() {
        $(this).siblings().removeClass('btn_chk');
        $(this).addClass('btn_chk');
        $('.choice_btn2').removeClass('btn_chk');
        $('.choice_btn2').css({
            display : 'block'
        })
        checkSeatInvt()

    } );

    // btn 회차
    $('.choice_btn2').click(function(){
        $(this).siblings().removeClass('btn_chk');
        $(this).addClass('btn_chk');

        $('.seat_stock_box').css({
            display : 'block'
        })
        $('.seat_ment').css({
            display : 'none'
        })
        checkSeatInvt()

    });

    // btn 좌석(seatInvtId)
    $('.choice_btn3').click(function(){
        $(this).siblings().removeClass('btn_chk');
        $(this).addClass('btn_chk');

    });

    //btn 좌석 갱신 함수
    function checkSeatInvt(){
        if($('.show_date1').hasClass('btn_chk') && $('#showTimeId1').hasClass('btn_chk')){
            // $('.option_box').css({
            //     visibility : 'visible'
            // })
            $('.seatInvt11').siblings().css({
                display : 'none'
            })

            $('.seatInvt11').css({
                display : 'block'
            })
        }
        if($('.show_date1').hasClass('btn_chk') && $('#showTimeId2').hasClass('btn_chk')){
            $('.seatInvt12').siblings().css({
                display : 'none'
            })

            $('.seatInvt12').css({
                display : 'block'
            })
        }
        if($('.show_date2').hasClass('btn_chk') && $('#showTimeId1').hasClass('btn_chk')){
            $('.seatInvt21').siblings().css({
                display : 'none'
            })

            $('.seatInvt21').css({
                display : 'block'
            })
        }
        if($('.show_date2').hasClass('btn_chk') && $('#showTimeId2').hasClass('btn_chk')){
            $('.seatInvt22').siblings().css({
                display : 'none'
            })

            $('.seatInvt22').css({
                display : 'block'
            })
        }
    }



    $('.booking_btn').click(function(){

        if(!$('.choice_btn').hasClass('btn_chk')){
            alert("날짜를 선택해주세요!")
            return false;
        }
        else if(!$('.choice_btn2').hasClass('btn_chk')){
            alert("시간을 선택해주세요!")
            return false;
        }
        else if(!$('.choice_btn3').hasClass('btn_chk')){
            alert("좌석등급을 선택해주세요!")
            return false;
        }

    });






    //좋아요 likes 기능
    $('.empty_heart').click(function(){
        $(this).css({
            display : 'none'
        })
        $('.full_heart').css({
            display : 'block'
        })

        let tmp = true;
        //likes 수 + 1;
        let likes = $('.likes_cnt').text();
        likes = parseInt(likes) + 1;
        $('.likes_cnt').text(likes);

    });



    //header, 탭바 따라다니게 하기, h_f.js 파일에서 따와서 조금 변형
    let header_height = $('.header').height();
    let main_o_top = $('.main').offset().top - header_height;
    let tab_height = $('.tabs').height();
    let tab_o_top = $('.tabs').offset().top - tab_height;

    $(window).scroll(function(){
        let header_bot = $(window).scrollTop();

        if(main_o_top <= header_bot){
            $('.header').addClass('header_event')
            $("#wrap").css({
                paddingTop: header_height
            })
        }
        else if(main_o_top >= header_bot){
            $('.header').removeClass('header_event')
            $("#wrap").css({
                paddingTop: 0
            })
        };

        if(header_bot >= tab_o_top){
            $('.header').removeClass('header_event')
            $('.tabs').addClass('tab_event')
            $('#wrap').css({
                paddingTop : tab_height
            })
        }
        else if(header_bot <= tab_o_top){
            $('.tabs').removeClass('tab_event')
            $('#wrap').css({
                paddingTop : 0
            })
        };

    });

    //상단으로 이동시켜주는 버튼 이미지 폴더에 아이콘 있음
    $(window).scroll(function(){
        if ($(this).scrollTop() > 600){
            $('.btn_gotop').css({
                display : 'block'
            });
        }
        else{
            $('.btn_gotop').css({
                display : 'none'
            });
        }
    });
    $('.btn_gotop').click(function(){
        $('html, body').animate({scrollTop:0},400);
        // return false;
    });

    //탭메뉴 클릭시 탭 변환
    $('.tab_title').click(function(){

        let tab_id = $(this).attr('data-tab');

        $('.tab_content').removeClass('tab_current');
        $("#"+tab_id).addClass('tab_current');

        $(this).children('span').css({
            width :'100%'
        });
        $(this).siblings().children('span').css({
            width : 0
        })

        $(this).css({
            color:'#008049'
        })
        $(this).siblings().css({
            color: '#000'
        })

        // $('.tab_title').removeClass('tab_border_bot');
        // $(this).addClass('tab_border_bot');

    });

    //리뷰탭 - 별점
    $('input[name="rating"]').click(function(){
        let rating_score = $(this).val();
        $('#input_rating').text(rating_score);
    });

    //리뷰탭 - 글 작성할 때 글자수 실시간 count 해주는거
    let content_cnt;
    $('#review_content').keyup(function(){
        content_cnt = $(this).val().length;
        $('#text_counter').text(content_cnt);
    });

    //리뷰 작성칸에 사용자가 마우스 클릭하면 로그인된 회원만 후기 작성 가능하다고 알람띄우기
    $('#review_content').click(function(){
        alert("로그인한 회원만 작성가능합니다.")

    });


    //리뷰에 보여질 사용자 id 뒤에 4글자만 마스킹하기
    function maskingid(userid) {
        // return userid.replace(/\s(?=\s{4})/g, "*");

        console.log(userid);
        userid = userid.slice(0, userid.length-4);

        console.log(userid+"****");

        return userid+"****";
    }


    let tmp_id = "asdf1234";

    let date = new Date();
    let today = `${date.getFullYear()}-${date.getMonth()+1}-${date.getDate()}`;
    let review;
    function input_rv(content, star_rate){
        //content = $('#review_content').val().trim();
        //star_rate = $('#input_rating').text();

        review = `<div class="rv_list_box">
                        <div class="rv_user_id">${maskingid(tmp_id)}</div>
                        <div class="rv_uploaded_box">
                            <div class="rv_uploaded rv_upload_date">${today}</div>
                            <div class="rv_uploaded rv_upload_content">${content}</div>
                        </div>
                        <div class="rv_right_box">
                            <div class="rv_star_rating star${star_rate}"></div>
                            <div class="rv_modify_delete">
                                <div class="rv_modify_btn">수정</div> |
                                <div class="rv_delete_btn">삭제</div>
                            </div>
                        </div>
                    </div>
                    <div class="rv_modify_box">
                        <div class="rv_modify"> 
                            <div class="rv_user_id">${tmp_id}</div>
                            <div class="rv_update_content_area">
                                <textarea name="rv_update" class="rv_update_content" maxlength="500" rows="4"></textarea>
                            </div>
                            <div class="rv_update_undo">
                                <button class="rv_btns update_btn">등록</button>
                                <button class="rv_btns undo_btn">취소</button>
                            </div>
                        </div>
                    </div>`

        $('.review_list').append(review);

    };


    //리뷰리스트에 리뷰 10개 박아넣기
    for(let i = 0; i < 5; i++){
        let tmp_content = "어쩌구 저쩌구 dddddd"+i;
        let tmp_star_rate = 5;
        input_rv(tmp_content, tmp_star_rate);
    }

    //리뷰개수 구해주기
    let rv_cnt = $('.rv_list_box').length;
    $('.rv_count').text(rv_cnt);

    //리뷰 등록하기*********************************************************
    $('#btn_submit_review').click(function(){

        content_cnt = $('#review_content').val().length;
        tmp_id = 'arton_1245';
        // let input_star_rate = $('#input_rating').text();

        if(content_cnt <= 10){
            alert("10자 이상 입력해주세요!")
        }
        else if(content_cnt >= 500){
            alert("최대 500자까지 입력 가능합니다.")
        }
        else{
            let input_content = $('#review_content').val().trim();
            let input_star_rate = $('#input_rating').text();

            if(input_star_rate == 0){
                alert("별점을 입력해주세요!")
            }
            else{
                input_rv(input_content , input_star_rate);
                alert("후기가 등록되었습니다.")
            }
            $('li[data-tab="tab_review"]').trigger("click"); // 새고할떄마다 리뷰탭 클릭해주기 귀찮아서 넣어준거

            //후기 등록하기 누르면 별점 체크된 부분이랑, 작성한 내용 초기화 해주기
            $('input[name="rating"]').prop("checked", false);
            $('#review_content').val("");
        }
    });

    //리뷰 리스트에서 리뷰 "수정" 버튼 누르면 수정할 수 있는 폼 보이게 하기
    // $('.rv_modify_btn').click(function(){
    $(document).on('click','.rv_modify_btn',function(){

        let review_text = $(this).parents('.rv_list_box').children('.rv_uploaded_box').children('.rv_upload_content').text();
        console.log(review_text);
        $(this).parents('.rv_list_box').next('.rv_modify_box').children().children('.rv_update_content_area').children('.rv_update_content').val(review_text);

        let rv_box = $(this).parents('.rv_list_box');
        let md_box = rv_box.next('.rv_modify_box');
        $(this)
        rv_box.css({
            display : 'none'
        })
        md_box.css({
            display : 'block'
        })

    });


    //리뷰 리스트에서 리뷰 "삭제" 버튼 누르면 삭제
    // $('.rv_delete_btn').click(function(){
    $(document).on('click','.rv_delete_btn',function(){
        let rv_box = $(this).parents('.rv_list_box');
        rv_box.remove();
    });


    //"수정" 버튼 누르면 나오는 수정폼의 "등록" 버튼
    // $('.update_btn').click(function(){
    $(document).on('click','.update_btn',function(){
        // let reupload = $(this).parents('.rv_update_content').text().trim();
        let reupload = $(this).parent().prev().children('.rv_update_content').val().trim();
        console.log(reupload);
        $(this).parents('.rv_modify_box').prev('.rv_list_box').children('.rv_uploaded_box').children('.rv_upload_content').text(reupload);
        //등록 버튼 누르면, 수정된 리뷰 잡는 것까지 됨. 이걸 디비에 저장하고 다시 리스트를 리로드 하면 된다.


        let rv_box = $(this).parents('.rv_modify_box').prev('.rv_list_box');
        let md_box = rv_box.next('.rv_modify_box');
        rv_box.css({
            display : 'flex'
        })
        md_box.css({
            display : 'none'
        })
        // 수정된 리뷰를 다시 등록하는거에 어려움을 느껴서 이건 백부분에 저장하고 다시 리로드 하는 방법으로 하는거 어떨지....
        // md_box.prev('.rv_list_box').children().children().children('.rv_upload_content').val(reupload); 
    })

    //수정 버튼 누르면 나오는 수정폼의 "취소" 버튼
    // $('.undo_btn').click(function(){
    $(document).on('click','.undo_btn',function(){
        let rv_box = $(this).parents('.rv_modify_box').prev('.rv_list_box');
        let md_box = rv_box.next('.rv_modify_box');
        rv_box.css({
            display : 'flex'
        })
        md_box.css({
            display : 'none'
        })
    });


    // 햄버거 버튼 누르면 왼쪽에 있는 사이드 바 나오가
    $(document).on('click', '.hamberg', function(){
        $('.ham_box').toggleClass('ham_active')
    });
    $('.side_hamberg').click(function(){
        $('.hamberg').trigger('click')
    })








});
// $(document).ready(function () {
// });
//
//     function checkId() {
//         let userId = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
//         $.ajax({
//             url: '/app/register/idCheck', //Controller에서 요청 받을 주소
//             type: 'post', //POST 방식으로 전달
//             data: {userId: userId},
//             success: function (cnt) { //컨트롤러에서 넘어온 cnt값을 받는다
//                 if (cnt == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
//                     alert("사용가능한 아이디 입니다.")
//                     $('#reg_btn_agr').attr('disabled', false);
//                     $('#reg_btn_agr').css('cursor', 'pointer');
//                 } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
//                     alert("이미 있는 아이디 입니다.");
//                     $('#reg_btn_agr').attr('disabled', true);
//                     $('#reg_btn_agr').css('cursor', 'default');
//                     $('#id').val('');
//                 }
//             },
//             error: function () {
//                 alert("에러입니다");
//             }
//         });
//     };
//
//
//
//

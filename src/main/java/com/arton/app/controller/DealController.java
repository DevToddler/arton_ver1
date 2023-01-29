package com.arton.app.controller;

import com.arton.app.domain.*;
import com.arton.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/deal")
public class DealController {

	@Autowired
	DealService dealService;


	@GetMapping("/deal")
	public String dealForm(HttpServletRequest request, Model m, HttpServletResponse response, PerfRoundDto prd) throws Exception {
		String perfCode = request.getParameter("perfCode");
		if (perfCode == null || "null".equals(perfCode)) {
			perfCode = "1001";
		}
		Integer perfId = Integer.valueOf(perfCode);
		System.out.println(perfId);
		// 공연정보
		PerfDto perfDto = dealService.readPerfInfo(perfId);
		perfDto.setSeatInfo(perfDto.getSeatInfo().replace(",", "<br>"));
		m.addAttribute("perfDto", perfDto);
		System.out.println("perfDto = " + perfDto);

		// 예매옵션(날짜, 시간)
		//		List<PerfRoundDto> list1 = dealService.readPerfRound(perfId);
		//		m.addAttribute("perfRoundDto", list1);
		//		System.out.println("pr : " + list1);

		// 예매옵션(남은좌석)
		//		Integer perfRoundId = prd.getId();
		//		List<SeatInvtDto> list2 = dealService.readSeatInvt(perfRoundId);
		//		m.addAttribute("seatInvtDto", list2);
		//		System.out.println("si : " + list2);
		//		System.out.println("perfRoundId" + perfRoundId);

		// 공연 상세이미지
		List<PerfDetailDto> pd = dealService.readPerfDetail(perfId);
		m.addAttribute("perfDetailDto", pd);

		// 뷰 dateIdx 갯수
		System.out.println("여기");
		int dateIdxNum = dealService.readCountDateIdx(perfId);

		List<ViewSeatInvtDto> showTimeList = dealService.readShowTime(perfId);
		m.addAttribute("showTimeList", showTimeList);
		System.out.println("showTimeList = " + showTimeList);

		Map map = new HashMap<>();
		map.put("perfId", perfId);
		map.put("idx", 1);
		List<ViewSeatInvtDto> roundByDate1 = dealService.readViewPerfRound(map);
		m.addAttribute("roundByDate1", roundByDate1);
		System.out.println("roundByDate1 = " + roundByDate1);

		Map map2 = new HashMap<>();
		map2.put("perfId", perfId);
		map2.put("idx", 2);
		List<ViewSeatInvtDto> roundByDate2 = dealService.readViewPerfRound(map2);
		m.addAttribute("roundByDate2", roundByDate2);
		System.out.println("roundByDate2 = " + roundByDate2);

		//		Map map = new HashMap<>();
		//		map.put("perfId", perfId);
		//		//		map.put("idx", 1);
		//		List<ViewSeatInvtDto> roundList = dealService.readViewPerfRound(map);
		//		m.addAttribute("roundList", roundList);
		//		System.out.println("roundList = " + roundList);
		String uri = request.getHeader("Referer");
		if (uri != null && !uri.contains("/login")) {
			request.getSession().setAttribute("prevPage", uri);
		}

		return "deal";
	}


	//	@RequestParam("payMethod") String payMethod,
	@PostMapping("/book")
	@ResponseBody
	public int book(@RequestParam("ticketCnt") String ticketCnt, @RequestParam("seatInvtId") String seatInvtId, HttpServletRequest request) {
		System.out.println(111111);
		//		   예매 생성 : 계산되는 부분 뷰에서 끌어오기. 필요(userIdx, seatInvtId, ticketCnt, payMethod)
		HttpSession session = request.getSession();
		System.out.println(222222);
		String userId = String.valueOf(session.getAttribute("userIdx"));
		if (userId == null) {
			System.out.println("미로그인");
			return 99;
		}
		Integer userIdx = Integer.valueOf(userId);
		System.out.println(33333333);


		Map map = new HashMap();
		map.put("userIdx", userIdx);
		map.put("seatInvtId", seatInvtId);
		map.put("ticketCnt", ticketCnt);
		map.put("payMethod", "카드 결제");
		System.out.println(444444444);
		int cnt = 99;
		int isBooked = dealService.doBookingSeat(map);
		System.out.println(5555555);
		if (isBooked == 1) {
			System.out.println("좌석수 감소 성공");
			cnt = dealService.doBookingInsert(map);
			if (cnt == 1)
				System.out.println("예매 성공");
		} else {
			System.out.println("좌석수 부족");
			return isBooked;

		}
		return cnt;


		//		String prevPage = (String) request.getSession().getAttribute("prevPage");
		//		if (prevPage != null) {
		//			request.getSession().removeAttribute("prevPage");
		//		}
		//
		//		String uri = "/";
		//
		//		if (prevPage != null && !prevPage.equals("")) {
		//			// 회원가입 - 로그인으로 넘어온 경우 "/"로 redirect
		//			if (prevPage.contains("/login")) {
		//				uri = "/";
		//			} else {
		//				uri = prevPage;
		//			}
		//		}
		//
		//		return "redirect:" + prevPage;
	}

	@PostMapping("/deal")
	public String review(@RequestBody ReviewDto reviewDto, HttpServletRequest request, Model m) {
		Integer perfId = Integer.valueOf(request.getParameter("perfCode"));

		HttpSession session = request.getSession();
		Integer userIdx = (Integer) session.getAttribute("userIdx");

		// 리뷰 전체 가져오기
		List<ReviewDto> review = dealService.readList(perfId);
		m.addAttribute("review", review);
		System.out.println("review : " + review);

		// 리뷰 작성
		reviewDto.setUserIdx(userIdx);
		reviewDto.setPerfId(perfId);
		dealService.write(reviewDto);

		// 리뷰 수정
		dealService.modify(reviewDto);

		// 리뷰 삭제
		String reviewId = request.getParameter("reviewId");
		Map map = new HashMap();
		map.put("reviewId", reviewId);
		map.put("userIdx", userIdx);
		dealService.remove(map);

		return "deal";
	}
}

package com.arton.app.controller;

import com.arton.app.domain.BookingDto;
import com.arton.app.domain.ChangePwDto;
import com.arton.app.domain.PerfDto;
import com.arton.app.domain.UserDto;
import com.arton.app.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/myPage")
public class MyPageController {

	@Autowired
	MyPageService myPageService;

	@GetMapping("/myPage")
	public String mypageForm(HttpServletRequest request, Model m, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		Integer userIdx = (Integer) session.getAttribute("userIdx");

		if (null == userIdx) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인이 필요합니다.'); location.href='/app/login/login';</script>");
			out.flush();
		}
		List<BookingDto> myBookingList = myPageService.readBookingList(userIdx);
		m.addAttribute("myBookingList", myBookingList);
		System.out.println(myBookingList);

		List<PerfDto> myLikedList = myPageService.readLikedList(userIdx);
		m.addAttribute("myLikedList", myLikedList);
		System.out.println(myLikedList);

		return "myPage";
	}

	@GetMapping("/myInfoChk")
	public String pwCheckForm() {
		return "pwCheck";
	}

	@PostMapping("/myInfoChk")
	public String pwCheck(UserDto userDto, HttpServletRequest request, Model m, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String userId = String.valueOf(session.getAttribute("userId"));
		String userPw = userDto.getUserPw();
		if (null == userId) {
			session = request.getSession();
			session.setAttribute("toURL", request.getRequestURL());
			return "redirect:/login/login";
		}

		if (!myPageService.chkPw(userId, userPw)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('잘못된 비밀번호입니다.');location.href='/app/myPage/myInfoChk';</script>");
			out.flush();
			return "redirect:/myPage/myInfoChk";

		}
		m.addAttribute("userDto", myPageService.readUser(userId));
		return "myInfo";
	}


	@PostMapping("/update")
	public String registerUpdate(UserDto userDto, HttpSession session, Model m) {
		String userId = (String) session.getAttribute("userId");
		userDto.setUserId(userId);
		try {
			int rowCount = myPageService.modify(userDto);

			if (rowCount != 1) {
				throw new Exception("회원정보 수정 실패");
			}
			return "redirect:/mypage";
		} catch (Exception e) {
			e.printStackTrace();

			m.addAttribute("userDto", userDto);

			return "redirect:/mypage";
		}
	}

	@GetMapping("/updatePw")
	public String updatePwForm() {
		return "changePw";
	}

	@PostMapping("/updatePw")
	public String UpdatePw(HttpSession session, ChangePwDto cpd, HttpServletResponse response) throws Exception {
		String userId = String.valueOf(session.getAttribute("userId"));
		String userPw = cpd.getUserPw();
		String newPw = cpd.getNewPw();
		String chkPw = cpd.getChkPw();
		System.out.println(userPw);
		System.out.println(newPw);
		System.out.println(chkPw);
		if (!newPw.equals(chkPw)) {
			System.out.println(1);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('새 비밀번호와 비밀번호 확인이 일치하지 않습니다.');");
			return "redirect:/myPage/updatePw";
		} else if (!myPageService.chkPw(userId, userPw)) {
			System.out.println(2);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호가 틀렸습니다.'); location.href='forward:/app/myPage/updatePw';</script>");
			return "redirect:/myPage/updatePw";
		} else {
			System.out.println(3);
			if (myPageService.modifyPw(userId, userPw, newPw) != 1) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('잘못된 접근입니다..');");
			}
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호가 수정되었습니다.');");
			return "redirect:/myPage/myPage";
		}

	}

	@RequestMapping("/mypage/msg")
	@ResponseBody
	public String alert() {
		return "a";
	}

	//	@PostMapping("/myInfo")
	//	public String updateUserInfo(HttpServletRequest request, Model m) {
	//		HttpSession session = request.getSession();
	//		Integer userIdx = (Integer) session.getAttribute("userIdx");
	//
	//		if (null == userIdx) {
	//			session = request.getSession();
	//			session.setAttribute("toURL", request.getRequestURL());
	//			return "redirect:/login";
	//		}
	//
	//
	//		String user = (String) session.getAttribute("id");
	//		userDto.setUserId(user);
	//		try {
	//			int rowCount = mypageService.modify(userDto);
	//
	//			if (rowCount != 1) {
	//				throw new Exception("회원정보 수정 실패");
	//			}
	//			return "redirect:/mypage";
	//		} catch (Exception e) {
	//			e.printStackTrace();
	//
	//			m.addAttribute("userDto", userDto);
	//
	//			return "redirect:/mypage";
	//		}
	//	}

}

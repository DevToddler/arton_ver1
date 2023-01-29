package com.arton.app.controller;

import com.arton.app.domain.UserDto;
import com.arton.app.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	LoginService loginService;

	@GetMapping("/logout")
	public String logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.invalidate();
		return "logout";
	}

	@GetMapping("/login")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String userId = String.valueOf(session.getAttribute("userId"));
		//		if (!(userId == null || "null".equals(userId))) {
		//			response.setContentType("text/html; charset=UTF-8");
		//			PrintWriter out = response.getWriter();
		//			out.println("<script>alert('이미 로그인한 상태입니다.');</script>");
		//			out.flush();
		//			return "redirect:/";
		//		}
		String uri = request.getHeader("Referer");
		if (uri != null && !uri.contains("/login")) {
			request.getSession().setAttribute("prevPage", uri);
		}
		return "login";
	}

	@PostMapping("/login")
	public String login(UserDto userDto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = userDto.getUserId();
		String userPw = userDto.getUserPw();
		Boolean rememberId = userDto.isRememberId();


		// 쿠키 생성
		Cookie cookie = new Cookie("userId", userId);
		cookie.setMaxAge(60 * 60 * 24 * 365);
		if (!rememberId) {
			cookie.setMaxAge(0); // 쿠키 삭제
		}
		response.addCookie(cookie);


		// id, pw 확인(
		if (!loginService.loginChk(userId, userPw)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('일치하는 ID/PW가 없습니다.'); location.href='/app/login/login';</script>");
			out.flush();
		}

		HttpSession session = request.getSession();

		// DB에서 userIdx 가져오기
		Integer userIdx = loginService.getUserIdx(userId);
		if (userIdx == null) {
			System.out.println("userIdx를 불러오지 못 했습니다.");
		}

		// 세션에 userId, userIdx 저장
		session.setAttribute("userId", userId);
		session.setAttribute("userIdx", userIdx);

		// 마지막으로 넘어온 페이지로 이동
		// GetMapping("/login")의 내용과 연결
		String prevPage = (String) request.getSession().getAttribute("prevPage");
		if (prevPage != null) {
			request.getSession().removeAttribute("prevPage");
		}

		String uri = "/";

		if (prevPage != null && !prevPage.equals("")) {
			// 회원가입 - 로그인으로 넘어온 경우 "/"로 redirect
			if (prevPage.contains("/login")) {
				uri = "/";
			} else {
				uri = prevPage;
			}
		}

		return "redirect:" + prevPage;
	}
}


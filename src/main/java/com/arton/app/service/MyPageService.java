package com.arton.app.service;

import com.arton.app.dao.BookingDao;
import com.arton.app.dao.PerfDao;
import com.arton.app.dao.UserDao;
import com.arton.app.domain.BookingDto;
import com.arton.app.domain.PerfDto;
import com.arton.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MyPageService {

	@Autowired
	BookingDao bookingDao;
	@Autowired
	UserDao userDao;
	@Autowired
	PerfDao perfDao;

	//페이지 로드
	// 해당 유저의 예매 내역 공연 5개 가져오기
	public List<BookingDto> readBookingList(Integer userIdx) {
		return bookingDao.userBookingList(userIdx);
	}

	// 해당 유저의 찜한 공연 5개 가져오기
	public List<PerfDto> readLikedList(Integer userIdx) {
		return perfDao.userLikedList(userIdx);
	}

	public boolean chkPw(String userId, String userPw) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("userPw", userPw);
		UserDto userDto = userDao.login(map);
		System.out.println(userDto);
		if (userDto == null) {

			System.out.println(1);
			return false;
		} else
			return true;

	}

	// 회원정보 가져오기
	public UserDto readUser(String userId) {
		return userDao.selectUserId(userId);
	}

	// 회원정보 수정
	public int modify(UserDto userDto) {
		return userDao.update(userDto);
	}

	// 비밀번호 변경
	public int modifyPw(String userId, String userPw, String newPw) throws Exception {
		return userDao.updatePw(userId, userPw, newPw);
	}

	// 회원 탈퇴
	public int withdrawal(String userId, String userPw) throws Exception {
		return userDao.withdrawal(userId, userPw);
	}


}

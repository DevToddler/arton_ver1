package com.arton.app.service;

import com.arton.app.dao.*;
import com.arton.app.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DealService {

	@Autowired
	PerfDao perfDao;

	@Autowired
	PerfRoundDao perfRoundDao;

	@Autowired
	SeatDao seatDao;

	@Autowired
	SeatInvtDao seatInvtDao;

	@Autowired
	BookingDao bookingDao;

	@Autowired
	ReviewDao reviewDao;

	@Autowired
	PerfDetailDao perfDetailDao;


	// 공연 정보
	public PerfDto readPerfInfo(Integer perfId) {
		return perfDao.select(perfId);
	}

	// 예매(날짜, 시간)
	public List<PerfRoundDto> readPerfRound(Integer perfId) {
		return perfRoundDao.selectAll(perfId);
	}

	// 예매(남은좌석)
	public List<SeatInvtDto> readSeatInvt(Integer perfRoundId) {
		return seatInvtDao.selectList(perfRoundId);
	}

	// 리뷰 전체 가져오기
	public List<ReviewDto> readList(Integer perfId) {
		return reviewDao.selectAll(perfId);
	}

	// 리뷰 작성
	public int write(ReviewDto reviewDto) {
		return reviewDao.insert(reviewDto);
	}

	// 리뷰 수정
	public int modify(ReviewDto reviewDto) {
		return reviewDao.update(reviewDto);
	}

	// 리뷰 삭제
	public int remove(Map map) {
		return reviewDao.delete(map);
	}

	// 공연 상세이미지
	public List<PerfDetailDto> readPerfDetail(Integer perfId) {
		return perfDetailDao.selectAll(perfId);
	}

	//
	public int readCountDateIdx(Integer perfId) {
		return perfDao.doCountDateIdx(perfId);
	}

	// 뷰 공연라운드
	public List<ViewSeatInvtDto> readViewPerfRound(Map map) {
		return perfDao.viewPerfRoundList(map);
	}

	public List<ViewSeatInvtDto> readShowTime(Integer perfId) {
		return perfDao.doselectShowTime(perfId);
	}

	public int doBookingSeat(Map map) {
		return seatInvtDao.bookingSeat(map);
	}

	public int doBookingInsert(Map map) {
		return bookingDao.insert(map);
	}
}

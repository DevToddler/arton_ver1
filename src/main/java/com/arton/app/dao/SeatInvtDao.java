package com.arton.app.dao;

import com.arton.app.domain.SeatInvtDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class SeatInvtDao {
	private static String namespace = "com.arton.app.dao.SeatInvtMapper.";
	@Autowired
	private SqlSession session;

	public SeatInvtDto select(Integer seatInvtId) {
		return session.selectOne(namespace + "select", seatInvtId);
	}

	public List<SeatInvtDto> selectList(Integer perfRoundId) {
		return session.selectList(namespace + "selectList", perfRoundId);
	}

	// 예매는 한번에 9장 이하만 가능
	// 주의!!!! 리턴값을 무조건 확인하기! 재고가 구매할 수량보다 적은경우 쿼리문 실행되지만 리턴이 0임!!!
	public int bookingSeat(Map map) {
		//        Map map = new HashMap();
		//        map.put("seatInvtId", seatInvtId);
		//        map.put("ticketCnt", ticketCnt);
		return session.update(namespace + "bookingSeat", map);
	}

	public int cancelSeat(Integer seatInvtId, Integer ticketCnt) {
		Map map = new HashMap();
		map.put("seatInvtId", seatInvtId);
		map.put("ticketCnt", ticketCnt);
		return session.update(namespace + "cancelSeat", map);
	}
}

package com.arton.app.dao;

import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import com.arton.app.domain.ViewSeatInvtDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class PerfDao {
	private static String namespace = "com.arton.app.dao.PerfMapper.";
	@Autowired
	private SqlSession session;

	public PerfDto select(Integer perfId) {
		return session.selectOne(namespace + "select", perfId);
	}

	public List<PerfDto> selectAll() {
		return session.selectList(namespace + "selectAll");
	}

	public List<PerfDto> selectRandom(Integer cateCode) {
		return session.selectList(namespace + "selectRandom", cateCode);
	}

	public List<PerfDto> selectParticulars(Map map) {
		return session.selectList(namespace + "selectParticulars", map);
	}

	public List<PerfDto> selectBookingRank(RankingCondition rc) {
		System.out.println("dao" + rc.getBookingDateFrom());
		System.out.println("dao" + rc.getBookingDateTo());
		return session.selectList(namespace + "selectBookingRank", rc);
	}

	public List<PerfDto> selectLikeCntRank(RankingCondition rc) {
		return session.selectList(namespace + "selectLikeCntRank", rc);
	}

	public List<PerfDto> userLikedList(Integer userIdx) {
		return session.selectList(namespace + "userLikedList", userIdx);
	}

	public int doCountDateIdx(Integer perfId) {
		return session.selectOne(namespace + "countDateIdx", perfId);
	}

	public List<ViewSeatInvtDto> viewPerfRoundList(Map map) {
		return session.selectList(namespace + "selectView", map);
	}

	public List<ViewSeatInvtDto> doselectShowTime(Integer perfId) {
		return session.selectList(namespace + "selectShowTime", perfId);
	}

}

package com.arton.app.dao;

import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PerfDaoTest {

	@Autowired
	PerfDao perfDao;

	@Test
	public void select() {
		PerfDto perfDto = perfDao.select(1001);
		System.out.println(perfDto);
	}

	@Test
	public void selectAll() {
		List<PerfDto> list = perfDao.selectAll();
		System.out.println(list);
	}

	@Test
	public void selectParticulars() {
		Map map = new HashMap();
		map.put("cate", "연극");
		map.put("perfId1", 1005);
		map.put("perfId2", 1002);
		map.put("perfId3", 1009);
		map.put("perfId4", 1034);
		map.put("perfId5", 1035);
		map.put("perfId6", 1036);
		map.put("perfId7", 1080);
		map.put("perfId8", 0);

		List<PerfDto> list = perfDao.selectParticulars(map);
		System.out.println(list);
	}

	@Test
	public void selectBookingRank() {
		RankingCondition rc = new RankingCondition("콘서트", "2022-12-06 00:00:00", "2022-12-06 23:59:59");
		List<PerfDto> list = perfDao.selectBookingRank(rc);
		System.out.println(list);
	}

	@Test
	public void selectLikeCntRank() {
		RankingCondition rc = new RankingCondition("전체", "2022-12-05 00:00:00", "2022-12-05 23:59:59");
		List<PerfDto> list = perfDao.selectLikeCntRank(rc);
		System.out.println();
	}

	@Test
	public void userLikedList() {
		List<PerfDto> list = perfDao.userLikedList(1);
		System.out.println(list);
	}

	@Test
	public void selectRandom() {
		List<PerfDto> list = perfDao.selectRandom(0);
		System.out.println(list);
	}

	@Test
	public void doCountDateIdx() {
		Integer perfId = 1001;
		Integer result = perfDao.doCountDateIdx(perfId);
		System.out.println(result);
	}

	@Test
	public void viewPerfRoundList() {
		Map map = new HashMap();
		map.put("perfId", 1001);
		map.put("idx", 1);

		//		List<ViewSeatInvtDto> list = perfDao.viewPerfRoundList(map);
		//		System.out.println(list);
	}
}
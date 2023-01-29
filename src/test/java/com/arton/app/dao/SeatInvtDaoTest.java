package com.arton.app.dao;

import com.arton.app.domain.SeatInvtDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class SeatInvtDaoTest {

	@Autowired
	SeatInvtDao seatInvtDao;

	@Test
	public void select() {
		SeatInvtDto seatInvtDto = seatInvtDao.select(1);
		System.out.println(seatInvtDto);
	}

	@Test
	public void selectList() {
		List<SeatInvtDto> list = seatInvtDao.selectList(3);
		System.out.println(list);
	}

	//    @Test
	//    public void bookingSeat() {
	//        SeatInvtDto seatInvtDto = seatInvtDao.select(1);
	//        assertTrue(seatInvtDao.bookingSeat(1, 4) == 0);
	//        seatInvtDto = seatInvtDao.select(1);
	//    }

	@Test
	public void cancelSeat() {
		SeatInvtDto seatInvtDto = seatInvtDao.select(1);
		assertTrue(seatInvtDao.cancelSeat(1, 4) == 1);
		seatInvtDto = seatInvtDao.select(1);

	}
}
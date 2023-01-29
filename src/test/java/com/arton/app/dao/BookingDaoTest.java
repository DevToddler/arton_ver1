package com.arton.app.dao;

import com.arton.app.domain.BookingDto;
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
public class BookingDaoTest {

    @Autowired
    BookingDao bookingDao;

    @Test
    public void insert() {
        Map map = new HashMap();
        map.put("userIdx", 1);
        map.put("seatInvtId", 100);
        map.put("ticketCnt", 2);
        map.put("payMethod", "카드 결제");
        bookingDao.insert(map);
    }


    @Test
    public void select() {
        BookingDto bookingDto = bookingDao.select(1);
        System.out.println(bookingDto);
    }

    @Test
    public void chkBookingStatus() {
        Map map = new HashMap();
        map.put("userIdx", 3);
        map.put("perfId", 1004);
        BookingDto bookingDto = bookingDao.chkBookingStatus(map);
        System.out.println(bookingDto);
    }

    //    @Test
    //    public void userBookingList() {
    //        List<BookingDto> list = bookingDao.userBookingList(1);
    //        System.out.println(list);
    //    }

    @Test
    public void cancelBooking() {
        bookingDao.cancelBooking(3);
    }

    @Test
    public void userBookingList() {
        List<BookingDto> list = bookingDao.userBookingList(1);
        System.out.println(list);
    }
}
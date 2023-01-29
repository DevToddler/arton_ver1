package com.arton.app.dao;

import com.arton.app.domain.BookingDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BookingDao {

    private static String namespace = "com.arton.app.dao.BookingMapper.";
    @Autowired
    private SqlSession session;

    // 공연예매
    // SeatInvtMapper의 bookingSeat으로 좌석수 감소 먼저 적용 후
    // bookingSeat의 리턴값이 1이 정상적으로 나온 후에 insert 해주기
    // bookingSeat의 리턴값이 0이 나오면 좌석 재고가 모자라서 좌석수 감소가 적용되지 않은 것임.
    public int insert(Map map) {
        return session.insert(namespace + "insert", map);
    }

    public BookingDto select(Integer bookingId) {
        return session.selectOne(namespace + "select", bookingId);
    }

    public BookingDto chkBookingStatus(Map map) {
        return session.selectOne(namespace + "chkBookingStatus", map);
    }


    // 예매 갱신(취소)
    public int cancelBooking(Integer bookingId) {
        return session.update(namespace + "cancelBooking", bookingId);
    }

    public List<BookingDto> userBookingList(Integer userIdx) {
        return session.selectList(namespace + "userBookingList", userIdx);
    }


    //    // 마이페이지 취소내역 가져오기(최신순)
    //    public List<BookingDto> selectCancel() {
    //        return session.selectList(namespace + "selectCancel");
    //    }

    // 마이페이지 예매/예매취소 페이징 처리(미완)
}

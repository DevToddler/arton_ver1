package com.arton.app.dao;

import com.arton.app.domain.SeatDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SeatDao {
    private static String namespace = "com.arton.app.dao.SeatMapper.";
    @Autowired
    private SqlSession session;

    public List<SeatDto> selectAll(Integer perfId) {
        return session.selectList(namespace + "selectAll", perfId);
    }

    //for Admin
    //추후 추가
}

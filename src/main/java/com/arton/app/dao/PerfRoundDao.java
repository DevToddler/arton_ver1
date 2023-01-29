package com.arton.app.dao;

import com.arton.app.domain.PerfRoundDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PerfRoundDao {
    private static String namespace = "com.arton.app.dao.PerfRoundMapper.";
    @Autowired
    private SqlSession session;

    public List<PerfRoundDto> selectAll(Integer perfId) {
        return session.selectList(namespace + "selectAll", perfId);
    }


    //for Admin
    //추후 수정.
    //    // 공연회차(날짜 및 시간) 등록
    //    public int insert(PerfRoundDto perfRoundDto) {
    //        return session.insert(namespace + "insert", perfRoundDto);
    //    }
    //
    //    // 공연회차(날짜 및 시간) 수정
    //    public int update(PerfRoundDto perfRoundDto) {
    //        return session.update(namespace + "update", perfRoundDto);
    //    }
    //
    //    // 공연회차(날짜 및 시간) 삭제
    //    public int delete(PerfRoundDto perfRoundDto) {
    //        return session.delete(namespace + "delete", perfRoundDto);
    //    }

}

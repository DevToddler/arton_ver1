package com.arton.app.dao;

import com.arton.app.domain.PerfDetailDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PerfDetailDao {
    private static String namespace = "com.arton.app.dao.PerfDetailMapper.";
    @Autowired
    private SqlSession session;

    public List<PerfDetailDto> selectAll(Integer perfId) {
        return session.selectList(namespace + "selectAll", perfId);
    }


    //for Admin
    //추후 수정.
    //    // 공연상세이미지 등록
    //    public int insert(PerfDetailDto perfDetailDto){
    //        return session.insert(namespace+"insert", perfDetailDto);
    //    }
    //
    //    // 공연상세이미지 수정
    //    public int update(PerfDetailDto perfDetailDto){
    //        return session.update(namespace+"update", perfDetailDto);
    //    }
    //
    //    // 공연상세이미지 삭제
    //    public int delete(PerfDetailDto perfDetailDto){
    //        return session.delete(namespace+"delete", perfDetailDto);
    //    }

}

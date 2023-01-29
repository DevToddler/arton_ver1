package com.arton.app.dao;

import com.arton.app.domain.WishlistDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class WishlistDao {
    private static String namespace = "com.arton.app.dao.WishlistMapper.";
    @Autowired
    private SqlSession session;

    public int insert(Integer userIdx, Integer perfId) throws Exception {
        Map map = new HashMap();
        map.put("userIdx", userIdx);
        map.put("perfId", perfId);
        return session.insert(namespace + "insert", map);
    }

    public WishlistDto select(Map map) {
        return session.selectOne(namespace + "select", map);
    }

    // 필요없는듯?
    //    public WishlistDto selectAll( ) {
    //        return session.selectOne(namespace + "select", );
    //    }

    public int count(Integer perfId) {
        return session.selectOne(namespace + "count", perfId);
    }

    public int delete(Integer userIdx, Integer perfId) throws Exception {
        Map map = new HashMap();
        map.put("userIdx", userIdx);
        map.put("perfId", perfId);
        return session.delete(namespace + "delete", map);
    }

    // for Admin
    public int deleteInvalid() {
        return session.delete(namespace + "deleteInvalid");
    }

    // for Test
    public int deleteAll() {
        return session.delete(namespace + "deleteAll");
    }

}

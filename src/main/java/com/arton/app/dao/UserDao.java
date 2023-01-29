package com.arton.app.dao;

import com.arton.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserDao {
    private static String namespace = "com.arton.app.dao.UserMapper.";
    @Autowired
    private SqlSession session;

    public int insert(UserDto userDto) {
        return session.insert(namespace + "insert", userDto);
    }

    public UserDto login(Map map) {
        return session.selectOne(namespace + "login", map);
    }

    public UserDto selectUserId(String userId) {
        return session.selectOne(namespace + "selectUserId", userId);
    }

    public UserDto selectUserIdx(Integer userIdx) {
        return session.selectOne(namespace + "selectUserIdx", userIdx);
    }

    public int updateLoginTime(String userId) {
        return session.update(namespace + "updateLoginTime", userId);
    }

    public int update(UserDto userDto) {
        return session.update(namespace + "update", userDto);
    }

    public int updatePw(String userId, String userPw, String newPw) throws Exception {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("userPw", userPw);
        map.put("newPw", newPw);
        return session.update(namespace + "updatePw", map);
    }

    public int withdrawal(String userId, String userPw) throws Exception {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("userPw", userPw);
        return session.delete(namespace + "withdrawal", map);
    }


    //for Admin
    public int adminUpdateUserStatus() {
        return session.update(namespace + "adminUpdateUserStatus");
    }

    public int adminDelete() {
        return session.delete(namespace + "adminDelete");
    }
}

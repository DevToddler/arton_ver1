package com.arton.app.service;

import com.arton.app.dao.UserDao;
import com.arton.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class LoginService {

    @Autowired
    UserDao userDao;


    // 로그인(userId, userPw) 값이 일치하는 레코드가 DB에 있는지 확인
    public boolean loginChk(String userId, String userPw) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("userPw", userPw);
        UserDto userInDB = userDao.login(map);
        if (userInDB == null)
            return false;
        return userInDB.getUserPw().equals(userPw);
    }

    public Integer getUserIdx(String userId) {
        UserDto userDto = userDao.selectUserId(userId);
        return userDto.getIdx();
    }
}

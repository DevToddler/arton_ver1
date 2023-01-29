package com.arton.app.service;

import com.arton.app.dao.UserDao;
import com.arton.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

	@Autowired
	UserDao userDao;


	public int join(UserDto userDto) {
		return userDao.insert(userDto);
	}

	public int idCheck(String userId) {
		UserDto userDto = userDao.selectUserId(userId);
		if (null == userDto)
			return 0;
		return 1;
	}
}

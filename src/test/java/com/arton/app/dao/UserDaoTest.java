package com.arton.app.dao;

import com.arton.app.domain.UserDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDaoTest {

	@Autowired
	UserDao userDao;

	//    @Test
	//    public void insert() throws Exception {
	//        UserDto userDto = new UserDto("arton100", "1234", "아트온100", "1111@1111", "19991101", "F", "01000000000", 1, 1);
	//        assertTrue(userDao.insert(userDto) == 1);
	//
	//        userDto = new UserDto("arton101", "1234", "아트온101", "1111@1111", "19991101", F, "01000000000", 1, 1);
	//        assertTrue(userDao.insert(userDto) == 1);
	//    }

	@Test
	public void login() throws Exception {
		Map map = new HashMap();
		//
		//
		UserDto userDto = userDao.login(map);
		System.out.println(userDto);
		assertNotNull(userDto);
	}

	//    @Test
	//    public void select() {
	//        System.out.println("arton1 : " + userDao.select("arton2"));
	//        UserDto userDto = userDao.select("arton2");
	//        assertTrue(userDto.equals(userDto));
	//    }
	//
	//    @Test
	//    public void updateLoginTime() throws Exception {
	//        UserDto userDto = userDao.select("arton100");
	//        userDao.updateLoginTime("arton100");
	//        UserDto userDto2 = userDao.select("arton100");
	//    }
	//
	//    @Test
	//    public void update() throws Exception {
	//        UserDto userDto = new UserDto("arton102", "1234", "아트온102", "1111@1111", "19991101", "F", "01000000000", 0, 3);
	//        assertTrue(userDao.insert(userDto) == 1);
	//        UserDto userDto2 = userDao.select("arton102");
	//
	//        userDto.setUserName("이름바뀜");
	//        userDto.setUserEmail("이메일바뀜");
	//        userDto.setBirthDate("20000010");
	//        userDto.setGender("M");
	//        userDto.setUserPhone("01012345678");
	//        userDto.setPromoChk(0);
	//        userDto.setUserStatus(3);
	//
	//        assertTrue(userDao.update(userDto) == 1);
	//        UserDto userDto3 = userDao.select("arton102");
	//
	//        System.out.println("user1 : " + userDto);
	//        System.out.println("user2 : " + userDto3);
	//
	//    }
	//
	//
	//    @Test
	//    public void updatePw() throws Exception {
	//        UserDto userDto = new UserDto("arton103", "1234", "아트온100", "1111@1111", "19991101", "F", "01000000000", 1, 1);
	//        assertTrue(userDao.insert(userDto) == 1);
	//        UserDto userDto2 = userDao.select("arton103");
	//        assertTrue(userDao.updatePw("arton103", "1234", "0101") == 1);
	//        userDto2 = userDao.select("arton103");
	//    }

	@Test
	public void withdrawal() throws Exception {
		Integer rowCount = userDao.withdrawal("arton103", "0101");
		assertTrue(rowCount == 1);
	}

}
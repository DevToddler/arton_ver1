package com.arton.app.dao;

import com.arton.app.domain.WishlistDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class WishlistDaoTest {

    @Autowired
    WishlistDao wishlistDao;

    @Test
    public void insert() throws Exception {
        assertTrue(wishlistDao.insert(5, 1001) == 1);
        assertTrue(wishlistDao.insert(5, 1002) == 1);
    }

    @Test
    public void select() throws Exception {
        assertTrue(wishlistDao.insert(5, 1003) == 1);

        Map map = new HashMap();
        map.put("userIdx", 5);
        map.put("perfId", 1001);
        System.out.println("map : " + map);

        WishlistDto wishlistDto = wishlistDao.select(map);
        System.out.println(wishlistDto);
        System.out.println(wishlistDto.getPerfId());

        assertTrue(wishlistDto != null);
    }

    @Test
    public void count() throws Exception {
        assertTrue(wishlistDao.count(1002) == 0);
        assertTrue(wishlistDao.insert(5, 1002) == 1);
        assertTrue(wishlistDao.count(1002) == 1);
        assertTrue(wishlistDao.insert(6, 1002) == 1);
        assertTrue(wishlistDao.count(1002) == 2);
    }

    @Test
    public void delete() throws Exception {
        assertTrue(wishlistDao.insert(5, 1001) == 1);
        assertTrue(wishlistDao.count(1001) == 1);
        assertTrue(wishlistDao.delete(5, 1001) == 1);
        assertTrue(wishlistDao.count(1001) == 0);
    }

    @Test
    public void deleteInvalid() {
    }

    @Test
    public void deleteAll() {
    }
}
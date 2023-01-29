package com.arton.app.dao;

import com.arton.app.domain.SeatDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class SeatDaoTest {

    @Autowired
    SeatDao seatDao;

    @Test
    public void selectAll() throws Exception {
        List<SeatDto> list = seatDao.selectAll(1001);
        assertTrue(list.size() == 2);

        System.out.println("list: " + list);

        // 리스트 뽑아보기
        for (SeatDto tmp : list) {
            System.out.println(tmp);
        }
    }
}
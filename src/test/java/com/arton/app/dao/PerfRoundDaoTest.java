package com.arton.app.dao;

import com.arton.app.domain.PerfRoundDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PerfRoundDaoTest {

    @Autowired
    PerfRoundDao perfRoundDao;

    @Test
    public void selectAll() throws Exception {
        List<PerfRoundDto> list = perfRoundDao.selectAll(1001);
        assertTrue(list.size() == 4);

        System.out.println("list: " + list);

        // 리스트 하나씩 뽑아보기
        for (PerfRoundDto tmp : list) {
            System.out.println(tmp);
        }
    }

}
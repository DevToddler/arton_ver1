package com.arton.app.dao;

import com.arton.app.domain.PerfDetailDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PerfDetailDaoTest {

    @Autowired
    PerfDetailDao perfDetailDao;

    @Test
    public void selectAll() throws Exception {

        List<PerfDetailDto> list = perfDetailDao.selectAll(1001);
        assertTrue(list.size() == 1);

        System.out.println("list: " + list);

        // 리스트 뽑아보기 -- 데이터 들어가면 한번 더 테스트
        for (PerfDetailDto tmp : list) {
            System.out.println(tmp);
        }
    }
}
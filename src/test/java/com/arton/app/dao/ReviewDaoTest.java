package com.arton.app.dao;

import com.arton.app.domain.ReviewDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ReviewDaoTest {

    @Autowired
    ReviewDao reviewDao;

    @Test
    public void insert() {
        ReviewDto reviewDto = new ReviewDto(2, 1001, "리뷰", 4);
        assertTrue(reviewDao.insert(reviewDto) == 1);
    }

    @Test
    public void select() {
        Map map = new HashMap();
        map.put("userIdx", 2);
        map.put("perfId", 1001);
        ReviewDto reviewDto = reviewDao.select(map);
        System.out.println(reviewDto);
    }

    @Test
    public void selectAll() {
        List<ReviewDto> list = reviewDao.selectAll(1001);
        System.out.println(list);
    }

    @Test
    public void count() {
        assertTrue(reviewDao.count(1001) == 5);
    }

    @Test
    public void update() {
        Map map = new HashMap();
        map.put("userIdx", 2);
        map.put("perfId", 1001);

        ReviewDto reviewDto = reviewDao.select(map);
        reviewDto.setRvContent("리뷰 싫어요");
        reviewDto.setRating(1);
        assertTrue(reviewDao.update(reviewDto) == 1);

        reviewDao.select(map);
    }

    @Test
    public void delete() {
        Map map = new HashMap<>();
        map.put("reviewId", 7);
        map.put("userIdx", 2);
        assertTrue(reviewDao.delete(map) == 1);
    }

    @Test
    public void deleteAll() {
    }
}
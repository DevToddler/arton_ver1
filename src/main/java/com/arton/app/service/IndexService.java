package com.arton.app.service;

import com.arton.app.dao.PerfDao;
import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class IndexService {

	@Autowired
	PerfDao perfDao;

	public List<PerfDto> readParticulars(Map map) {
		return perfDao.selectParticulars(map);
	}

	public List<PerfDto> readBookingRank(RankingCondition rc) {
		return perfDao.selectBookingRank(rc);
	}

	public List<PerfDto> readRandom(Integer cateCode) {
		return perfDao.selectRandom(cateCode);
	}

}

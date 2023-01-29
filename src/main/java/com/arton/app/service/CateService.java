package com.arton.app.service;

import com.arton.app.dao.PerfDao;
import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CateService {

	@Autowired
	PerfDao perfDao;

	public List<PerfDto> readRandom(Integer cateCode) {
		return perfDao.selectRandom(cateCode);
	}

	public List<PerfDto> readParticulars(Map map) {
		return perfDao.selectParticulars(map);
	}

	public List<PerfDto> readLikeCntRank(RankingCondition rc) {
		return perfDao.selectLikeCntRank(rc);
	}

	public List<PerfDto> readBookingRank(RankingCondition rc) {
		return perfDao.selectBookingRank(rc);
	}
}

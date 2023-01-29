package com.arton.app.service;

import com.arton.app.dao.PerfDao;
import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RankService {

	@Autowired
	PerfDao perfDao;

	public List<PerfDto> readBookingRank(RankingCondition rc) {
		return perfDao.selectBookingRank(rc);
	}

}

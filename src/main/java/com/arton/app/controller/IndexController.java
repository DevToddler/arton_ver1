package com.arton.app.controller;

import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import com.arton.app.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

	@Autowired
	IndexService indexService;

	@GetMapping("/")
	public String indexForm(Model m) {

		Map map = new HashMap();
		map.put("cate", "");
		map.put("perfId1", 1096);
		map.put("perfId2", 1091);
		map.put("perfId3", 1056);
		map.put("perfId4", 1086);
		map.put("perfId5", 1081);
		map.put("perfId6", 1060);
		map.put("perfId7", 0);
		map.put("perfId8", 0);

		List<PerfDto> list = indexService.readParticulars(map);
		m.addAttribute("list", list);
		System.out.println("list : ");
		System.out.println(list);

		//		Integer cateCode = 0;
		//		List<PerfDto> list = indexService.readRandom(cateCode);

		//		for (PerfDto pd : list) {
		//			StringBuffer sb1 = new StringBuffer(pd.getPerfStart());
		//			sb1.insert(4, ".").insert(7, ".");
		//			pd.setPerfStart(sb1.toString());
		//
		//			StringBuffer sb2 = new StringBuffer(pd.getPerfEnd());
		//			sb2.insert(4, ".").insert(7, ".");
		//			pd.setPerfEnd(sb2.toString());
		//		}

		m.addAttribute("list", list);
		System.out.println("list");
		System.out.println(list);

		RankingCondition rc1 = new RankingCondition("콘서트");
		List<PerfDto> rankList1 = indexService.readBookingRank(rc1);
		m.addAttribute("rankList1", rankList1);
		System.out.println("콘서트 랭킹 : ");
		System.out.println(rankList1);

		RankingCondition rc2 = new RankingCondition("뮤지컬");
		List<PerfDto> rankList2 = indexService.readBookingRank(rc2);
		m.addAttribute("rankList2", rankList2);
		System.out.println("뮤지컬 랭킹 : ");
		System.out.println(rankList2);

		RankingCondition rc3 = new RankingCondition("연극");
		List<PerfDto> rankList3 = indexService.readBookingRank(rc3);
		m.addAttribute("rankList3", rankList3);
		System.out.println("연극 랭킹 : ");
		System.out.println(rankList3);

		return "index";
	}
}

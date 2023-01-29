package com.arton.app.controller;

import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import com.arton.app.service.CateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/cate")
public class CateController {

	@Autowired
	CateService cateService;

	@GetMapping("/cate")
	public String cateForm(HttpServletRequest request, Model m) {

		String cate = request.getParameter("cateCode");
		if (cate == null || "null".equals(cate)) {
			cate = "1";
		}
		Integer cateCode = Integer.valueOf(cate);


		switch (cateCode) {
			case 2:
				cate = "뮤지컬";
				break;
			case 3:
				cate = "연극";
				break;
			case 4:
			case 5:
			case 6:
			case 1:
			default:
				cate = "콘서트";
		}

		//		System.out.println(1);
		//		System.out.println("cate:" + cate);
		//		Map map = new HashMap();
		//		map.put("cate", cate);
		//		map.put("perfId1", 1001);
		//		map.put("perfId2", 1002);
		//		map.put("perfId3", 1003);
		//		map.put("perfId4", 1004);
		//		map.put("perfId5", 1005);
		//		map.put("perfId6", 0);
		//		map.put("perfId7", 0);
		//		map.put("perfId8", 0);

		//		List<PerfDto> list1 = cateService.readParticulars(map);
		//		m.addAttribute("list1", list1);
		//		System.out.println("list1");
		//		System.out.println(list1);

		List<PerfDto> list1 = cateService.readRandom(cateCode);
		m.addAttribute("list1", list1);
		//		System.out.println("list1");
		//		System.out.println(list1);

		RankingCondition rc = new RankingCondition(cate);
		List<PerfDto> list2 = cateService.readLikeCntRank(rc);
		m.addAttribute("list2", list2);
		//		System.out.println("list2");
		//		System.out.println(list2);

		List<PerfDto> list3 = cateService.readBookingRank(rc);
		m.addAttribute("list3", list3);
		//		System.out.println("list3");
		//		System.out.println(list3);

		return "cate";
	}


}

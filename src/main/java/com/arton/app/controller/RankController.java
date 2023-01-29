package com.arton.app.controller;

import com.arton.app.domain.PerfDto;
import com.arton.app.domain.RankingCondition;
import com.arton.app.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/rank")
public class RankController {

	@Autowired
	RankService rankService;

	@GetMapping("/rank")
	public String rankForm(HttpServletRequest request, Model m) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();

		//쿼리스트링 cate
		String cate = request.getParameter("cateCode");
		if (cate == null || "null".equals(cate)) {
			cate = "0";
		}
		Integer cateCode = Integer.valueOf(cate);
		switch (cateCode) {
			case 1:
				cate = "콘서트";
				break;
			case 2:
				cate = "뮤지컬";
				break;
			case 3:
				cate = "연극";
				break;
			case 4:
			case 5:
			case 6:
			case 0:
			default:
				cate = "";
		}

		//쿼리스트링 period
		String period = request.getParameter("period");
		if (period == null || "null".equals(period)) {
			period = "d";
		}

		//쿼리스트링 rankDate
		String rankDate = request.getParameter("rankDate");

		if (rankDate == null || "null".equals(rankDate)) {
			rankDate = sdf.format(cal.getTime());
		}
		try {
			Date date = sdf.parse(rankDate);
			cal.setTime(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		String dateTo = sdf.format(cal.getTime()) + " 23:59:59";

		String dateFrom = "";
		switch (period) {
			case "d":
				//				cal.add(Calendar.DATE, -1);
				dateFrom = sdf.format(cal.getTime()) + " 00:00:00";
				sdf.format(cal.getTime());
				break;
			case "w":
				cal.add(Calendar.DATE, -7);
				dateFrom = sdf.format(cal.getTime()) + " 00:00:00";
				break;
			case "m":
				cal.add(Calendar.DATE, -30);
				dateFrom = sdf.format(cal.getTime()) + " 00:00:00";
				break;
			case "y":
				cal.add(Calendar.YEAR, -1);
				dateFrom = sdf.format(cal.getTime()) + " 00:00:00";
				break;
			default:
				//				cal.add(Calendar.DATE, -1);
				dateFrom = sdf.format(cal.getTime()) + " 00:00:00";
				break;
		}
		System.out.println("con" + dateFrom);
		System.out.println("con" + dateTo);

		RankingCondition rc = new RankingCondition(cate, dateFrom, dateTo);
		List<PerfDto> rankList = rankService.readBookingRank(rc);
		//		for (PerfDto pd : rankList) {
		//			StringBuffer sb1 = new StringBuffer(pd.getPerfStart());
		//			sb1.insert(4, ".").insert(7, ".");
		//			pd.setPerfStart(sb1.toString());
		//
		//			StringBuffer sb2 = new StringBuffer(pd.getPerfEnd());
		//			sb2.insert(4, ".").insert(7, ".");
		//			pd.setPerfEnd(sb2.toString());
		//		}
		m.addAttribute("rankList", rankList);
		System.out.println(cateCode + "rankList : " + rankList);

		return "rank";

	}
}

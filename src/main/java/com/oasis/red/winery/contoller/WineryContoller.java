package com.oasis.red.winery.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.oasis.red.winery.domain.WineryVO;
import com.oasis.red.winery.service.WineryService;

@Controller
@CrossOrigin(origins = "*")
public class WineryContoller {
	@Autowired
	WineryService wService;
	
	@RequestMapping(value = "/winery/main.kw", method = RequestMethod.GET)
	public ModelAndView showWineryMap(ModelAndView mv) {
		try {
			List<WineryVO> wList = wService.selectWinery();
			String[] address = new String[wList.size()];
			String[] wineryNameArr = new String[wList.size()];
			int[] wineryNoArr = new int[wList.size()];
			for(int i = 0; i < wList.size(); i++) {
				address[i] = wList.get(i).getWineryAddress();
				wineryNoArr[i] = wList.get(i).getWineryNo();
				wineryNameArr[i] = wList.get(i).getWineryName();
			}
			mv.addObject("wineryName", wineryNameArr);
			mv.addObject("address", address);
			mv.addObject("wineryNoArr", wineryNoArr);
			mv.setViewName("winery/main");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/winery/detail.kw", method = RequestMethod.GET)
	public ModelAndView showWineryDetail(ModelAndView mv, int wineryNo) {
		try {
			WineryVO winery = wService.selectOneByWinery(wineryNo);
			String madeWine = winery.getMadeWine();
			String[] madeWines = madeWine.split(",");
			if(winery != null) {
				mv.addObject("madeWines", madeWines);
				mv.addObject("winery",winery);
				mv.setViewName("winery/detail");
			} else {
				mv.addObject("msg", "와이너리 정보를 찾을 수 없습니다.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
}

package com.oasis.red.wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineVO;
import com.oasis.red.wine.service.WineService;

@Controller
public class WineController {
	@Autowired
	WineService wService;
	
	//와인 정보 댓글
	@RequestMapping()
	public ModelAndView commentWine(ModelAndView mv) {
		try {
			
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//와인 상세 조회 페이지
	@RequestMapping(value = "/wine/winedetail.kw", method = RequestMethod.GET)
	public ModelAndView showWineDetail(ModelAndView mv
			,@RequestParam("wineNo") int wineNo) {
		try {
			WineVO wine = wService.selectOneByWine(wineNo);
			if(wine != null) {
				mv.addObject("wine", wine);
				mv.setViewName("wine/winedetail");
			} else {
				mv.addObject("msg", "와인 정보를 찾을 수 없습니다. 관리자에게 문의해주세요.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	//와인 목록 페이지
	@RequestMapping(value = "/wine/winelist.kw", method = RequestMethod.GET)
	public ModelAndView showWineList(ModelAndView mv
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage
			, @RequestParam(required = false) String category
			, @RequestParam(value="keyword", required=false) String keyword) {
		try {
			List<WineVO> wList;
			int totalCount = 0;
			PageInfo pInfo;
			if(keyword != null) {
				totalCount = wService.getSearchCountWine(keyword);
				pInfo = this.getPageInfo(currentPage, totalCount);
				wList = wService.searchWineList(pInfo, keyword);
				mv.addObject("wList", wList);
				mv.addObject("keyword", keyword);
				mv.addObject("pInfo", pInfo);
			}else {
				totalCount = wService.getTotalCountWine(category);
				pInfo = this.getPageInfo(currentPage, totalCount);
				wList = wService.selectWineList(pInfo, category);	
				mv.addObject("wList", wList);
				mv.addObject("category", category);
				mv.addObject("pInfo", pInfo);
			}
			if(wList.size() != 0) {
				mv.setViewName("wine/winelist");
			}else {
				mv.addObject("msg", "와인 정보가 없습니다.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 페이징
	private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		PageInfo pInfo = new PageInfo();
		int RecoudCountPerPage = pInfo.getRecordCountPerPage();
		int NaviCountPerPage = pInfo.getNaviCountPerPage();
		int naviTotalCount;
		int startNavi; 
		int endNavi;
	
		naviTotalCount = (int)Math.ceil((double)totalCount/RecoudCountPerPage);
		startNavi = ((int)((double)currentPage/NaviCountPerPage+0.9)-1)*NaviCountPerPage+1;
		endNavi = startNavi + NaviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		pInfo.setCurrentPage(currentPage);
		pInfo.setNaviTotalCount(naviTotalCount);
		pInfo.setStartNavi(startNavi);
		pInfo.setEndNavi(endNavi);
		return pInfo;
	}
}

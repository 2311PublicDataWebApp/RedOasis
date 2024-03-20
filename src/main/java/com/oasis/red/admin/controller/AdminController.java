package com.oasis.red.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineryVO;
import com.oasis.red.admin.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService aService;
	
	// 회원 관리
	@RequestMapping(value= "/admin/userlist.kw", method=RequestMethod.GET)
	public String adminUserList (Model model
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage
			, @RequestParam(value="sortList", required=false)String sortList) {
		try {
			// 총 가입자 수
			int totalCount = aService.selectTotalCountUser();
			model.addAttribute("totalCount", totalCount);
			// 페이징 처리후 값 조회
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			// 초기 설정값
			if(sortList == null || sortList.equals("")) {
			    sortList = "USER_ID";
			}
			List<UserVO> uList = aService.selectUserList(pInfo, sortList);
			if(!uList.isEmpty()) {
				model.addAttribute("uList", uList);
				model.addAttribute("pInfo", pInfo);
			}else {
				model.addAttribute("uList", uList);
			}
			return "admin/userlist";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	// 게시판 관리
	@RequestMapping(value="/admin/boardlist.kw", method=RequestMethod.GET)
	public String adminBoardList (Model model
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage
			, @RequestParam(value="sortList", required=false)String sortList) {
		try {
			// 총 게시글 수
			int totalCount = aService.selectTotalCountBoard();
			model.addAttribute("totalCount", totalCount);
			// 페이징 처리후 값 조회
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			// 초기 설정값
			if(sortList == null || sortList.equals("")) {
			    sortList = "UPDATE_DATE";
			}
			List<BoardVO> bList = aService.selectBoardList(pInfo, sortList);
			if(!bList.isEmpty()) {
				model.addAttribute("bList", bList);
				model.addAttribute("pInfo", pInfo);
			}else {
				model.addAttribute("bList", bList);
			}
			return "admin/boardlist";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	// 와인 관리 미진행
	
	// 와리너리 관리 진행중
	@RequestMapping(value="/admin/winerylist.kw", method=RequestMethod.GET)
	public String adminWineryList (Model model
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage
			, @RequestParam(value="sortList", required=false)String sortList) {
		try {
			// 총 와이너리 수
			int totalCount = aService.selectTotalCountWinery();
			model.addAttribute("totalCount", totalCount);
			// 페이징 처리후 값 조회
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			// 초기 설정값
			if(sortList == null || sortList.equals("")) {
			    sortList = "WINERY_NO";
			}
			List<WineryVO> wryList = aService.selectWineryList(pInfo, sortList);
			if(!wryList.isEmpty()) {
				model.addAttribute("wryList", wryList);
				model.addAttribute("pInfo", pInfo);
			}else {
				model.addAttribute("wryList", wryList);
			}
			return "admin/winerylist";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
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

package com.oasis.red.wine.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oasis.red.wine.domain.PageInfo;
import com.oasis.red.wine.domain.WineReplyVO;
import com.oasis.red.wine.domain.WineVO;
import com.oasis.red.wine.service.WineService;

@Controller
public class WineController {
	@Autowired
	WineService wService;
	
	//와인 댓글 삭제
	@PostMapping("/wine/deleteComment.kw")
	@ResponseBody
	public ResponseEntity<?> wineReplyDelete(@RequestParam("commentNo") int commentNo, @RequestParam("wineNo") int wineNo) {
        try {
            int result = wService.wineReplyDelete(commentNo);
            if(result > 0) {
                // 성공적으로 삭제됨
                return ResponseEntity.ok(Map.of("success", true, "message", "댓글이 삭제되었습니다."));
            } else {
                // 삭제 실패
                return ResponseEntity.badRequest().body(Map.of("success", false, "message", "댓글을 삭제할 수 없습니다. 관리자에게 문의해주세요."));
            }
        } catch (Exception e) {
            // 예외 처리
            return ResponseEntity.badRequest().body(Map.of("success", false, "message", "댓글 삭제 중 오류가 발생했습니다."));
        }
    }
	
	//와인 정보 댓글 입력 및 와인 점수 계산
	@RequestMapping(value = "/wine/winedetail.kw", method = RequestMethod.POST)
	public ModelAndView wineReplyInsert(ModelAndView mv
			,HttpSession session
			, @RequestParam("wineNo") int wineNo
			, @ModelAttribute WineReplyVO reply) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if(memberId != null) {
				reply.setWineNo(wineNo);
				reply.setUserId(memberId);
				//와인 댓글 등록
				int result = wService.insertWineReply(reply);
				
				//와인 점수 계산
				List<WineReplyVO> wrList = wService.selectWineReply(wineNo);
				wService.wineScoreSet(wrList, wineNo);
				if(result > 0) {
					mv.setViewName("redirect:/wine/winedetail.kw?wineNo=" + wineNo);
				} else {
					mv.addObject("msg", "댓글 작성에 실패했습니다. 관리자에게 문의 해주세요");
					mv.setViewName("common/errorPage");
				}
			}else {
				mv.addObject("msg", "로그인 후에 다시 이용해주세요.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//와인 상세 조회 페이지
	@RequestMapping(value = "/wine/winedetail.kw", method = RequestMethod.GET)
	public ModelAndView showWineDetail(ModelAndView mv
			,HttpSession session
			,@RequestParam("wineNo") int wineNo) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if (memberId != null) {
			    // 로그인 상태인 경우의 동작
			    mv.addObject("loggedIn", true);
			} else {
			    // 로그아웃 상태인 경우의 동작
			    mv.addObject("loggedIn", false);
			}
			WineVO wine = wService.selectOneByWine(wineNo);
			List<WineReplyVO> wrList = wService.selectWineReply(wineNo);
			if(wine != null) {
				if(memberId != null) {
					mv.addObject("memberId", memberId);					
				}
				mv.addObject("wrList", wrList);
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
			, HttpSession session
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage
			, @RequestParam(required = false) String category
			, @RequestParam(value="keyword", required=false) String keyword) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if (memberId != null) {
			    // 로그인 상태인 경우의 동작
			    mv.addObject("loggedIn", true);
			} else {
			    // 로그아웃 상태인 경우의 동작
			    mv.addObject("loggedIn", false);
			}
			
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

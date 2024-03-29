package com.oasis.red.winery.contoller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oasis.red.winery.domain.WineryReplyVO;
import com.oasis.red.winery.domain.WineryVO;
import com.oasis.red.winery.service.WineryService;

@Controller
@CrossOrigin(origins = "*")
public class WineryContoller {
	@Autowired
	WineryService wService;
	
	//와이너리 댓글 삭제
	@PostMapping("/winery/delete.kw")
	public ModelAndView wineryReplyDelete(ModelAndView mv
			,int wineryNo
			,int replyNo) {
		try {
			int result = wService.wineryReplyDelete(replyNo);
			if(result > 0) {
				mv.setViewName("redirect:/winery/detail.kw?wineryNo=" + wineryNo);
			} else {
				mv.addObject("msg", "댓글 삭제에 실패하였습니다. 관리자에게 문의해주세요.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//와이너리 댓글 등록
	@PostMapping("/winery/register.kw")
	public ModelAndView wineryReplyRegister(ModelAndView mv
			,HttpSession session
			, @RequestParam("wineryNo") int wineryNo
			, @ModelAttribute WineryReplyVO reply) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if(memberId != null) {
				reply.setUserId(memberId);
				reply.setWineryNo(wineryNo);
				//와이너리 댓글 등록
				int result = wService.wineryReplyRegister(reply);
				if(result > 0) {
					mv.setViewName("redirect:/winery/detail.kw?wineryNo=" + wineryNo);
				} else {
					mv.addObject("msg", "댓글 등록에 실패했습니다. 관리자에게 문의해주세요.");
					mv.setViewName("common/errorPage");
				}
			} else {
				mv.addObject("msg", "로그인 후에 다시 시도해주세요.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//와이너리 지도
	@RequestMapping(value = "/winery/main.kw", method = RequestMethod.GET)
	public ModelAndView showWineryMap(ModelAndView mv
			,HttpSession session) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if (memberId != null) {
			    // 로그인 상태인 경우의 동작
			    mv.addObject("loggedIn", true);
			} else {
			    // 로그아웃 상태인 경우의 동작
			    mv.addObject("loggedIn", false);
			}
			
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
	public ModelAndView showWineryDetail(ModelAndView mv, int wineryNo
			,HttpSession session) {
		try {
			String memberId = (String)session.getAttribute("userId");
			if (memberId != null) {
			    // 로그인 상태인 경우의 동작
			    mv.addObject("loggedIn", true);
			} else {
			    // 로그아웃 상태인 경우의 동작
			    mv.addObject("loggedIn", false);
			}
			
			//와이너리 상세 조회
			WineryVO winery = wService.selectOneByWinery(wineryNo);
			String madeWine = winery.getMadeWine();
			String[] madeWines = madeWine.split(",");
			
			//와이너리 댓글 조회
			List<WineryReplyVO> wrList = wService.selectWineryReply(wineryNo);
			
			if(winery != null) {
				if(memberId != null) {
					mv.addObject("memberId", memberId);
				}
				mv.addObject("wrList", wrList);
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

package com.oasis.red.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.oasis.red.board.domain.CommentVO;
import com.oasis.red.board.service.CommentService;



@Controller
public class CommentController {
	@Autowired
	private CommentService rService;
	
	@ResponseBody
	@RequestMapping(value="/comment/add.kw", method=RequestMethod.POST)
	public String insertCommentAjax(@ModelAttribute CommentVO comment
			, HttpSession session) {
		try {
			String userId 
				= (String)session.getAttribute("userId");
			int result = 0;
			if(userId != null && !userId.equals("")) {
				comment.setUserId(userId);
				result = rService.insertComment(comment);
			}else {
				return "Login needed";
			}
			if(result > 0) {
				return "success";
			}else {
				return "fail";
			}
		} catch (Exception e) {
			return e.getMessage();
		}
	}
	
	
	@RequestMapping(value="comment/delete/kw", method=RequestMethod.POST)
	public String deleteComment(Integer replyNo) {
		try {
			int result=rService.deleteComment(replyNo);
			if (result > 0) {
				return "success";
			}else {
				return "fail";
			}
		} catch (Exception e) {
			return e.getMessage();
			// TODO: handle exception
		}
	}
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/comment/list.kw"
			, produces="application/json;charset=utf-8"
			, method=RequestMethod.GET)
	public String showCommentList(@RequestParam("boardNo") Integer boardNo) {
		// DB에서 댓글목록 가져오기
		List<CommentVO> rList = rService.selectCommentList(boardNo);
		// ReplyVO -> JSON 변환시 json-simple 라이브러리 필요
		// List -> JSON Array로 만들어서 리턴해줘야 함
		JSONObject json = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		for(CommentVO comment : rList) {
			json.put("CommentNo"		, comment.getCommentNo());
			json.put("boardNo"	, comment.getBoardNo());
			json.put("commentContent" , comment.getCommentContent());
			json.put("userId"	, comment.getUserId());
			json.put("commentDate"	, comment.getCommentDate());
			// { "replyNo" : 1, "refBoardNo" : 222, "replyContent" : "댓글내용", ... }
			jsonArr.add(json);
			// -> [ {}, {}, {}, .... ]
		}
		Gson gson=new Gson();
		return gson.toJson(rList);
	}
	
	
//	@RequestMapping(value="/reply/add.kh", method=RequestMethod.POST)
//	public String insertReply(Model model
//			, HttpSession session
//			, @ModelAttribute ReplyVO replyVO) {
//		try {
//			String memberId = (String)session.getAttribute("memberId");
//			if(memberId != null) {
//				replyVO.setReplyWriter(memberId);
//			}else {
//				model.addAttribute("msg", "로그인이 필요합니다.");
//				return "common/errorPage";
//			}
//			int result = rService.insertReply(replyVO);
//			return "redirect:/board/detail.kh?boardNo="+replyVO.getRefBoardNo();
//		} catch (Exception e) {
//			model.addAttribute("msg", e.getMessage());
//			return "common/errorPage";
//		}
//	}
}

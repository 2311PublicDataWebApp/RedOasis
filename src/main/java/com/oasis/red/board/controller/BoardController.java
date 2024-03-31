package com.oasis.red.board.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.CommentVO;
import com.oasis.red.board.domain.PageInfo;
import com.oasis.red.board.service.BoardService;
import com.oasis.red.board.service.CommentService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	@Autowired
	private CommentService rService;

	public ModelAndView showRegisterForm(ModelAndView mv) {
		
		return mv;
	}
	
//-----------------------------게시판 목록------------------------------------
	@RequestMapping(value="/board/list.kw", method=RequestMethod.GET)
	public String showBoardList(Model model
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		try {
			Integer totalCount = 300;
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			List<BoardVO> bList = bService.selectBoardList(pInfo);
			if(!bList.isEmpty()) {
				model.addAttribute("pInfo", pInfo);
				model.addAttribute("bList", bList);
			}else {
				// 없다고 알려줘야 함.
				// 1. 항상 에러페이지를 통해서 데이터가 없다고 했지만
				// 2. list.jsp에서 데이터가 존재하지 않습니다 메시지 출력하도록 할 수 있음
				model.addAttribute("bList", null);
			}
			return "board/list";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
//--------------------------게시판 세부사항-----------------------------------------
	@RequestMapping(value="/board/detail.kw", method=RequestMethod.GET)
	public String showBoardDetail(Model model, Integer boardNo) {
		try {
			BoardVO boardVO = bService.selectOneByNo(boardNo);
			List<CommentVO> rList = rService.selectCommentList(boardNo);
			List<BoardImgVO> iList= bService.selectImgList(boardNo);
			model.addAttribute("board", boardVO);
			model.addAttribute("rList", rList);
			model.addAttribute("iList", iList);
			return "board/detail";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	
//------------------------------------ 게시물 검색-------------------------------------------
	@RequestMapping(value="/board/search.kh", method=RequestMethod.GET)
	public ModelAndView searchBoardList(ModelAndView mv
			, @RequestParam("searchKeyword")String searchKeyword
			, @RequestParam(value="page", required=false, defaultValue="1")Integer currentPage) {
		/*
		 * 2개의 값을 하나의 변수로 다루는 방법
		 * 1. VO 클래스를 만드는 방법 (이미 해봄)
		 * 2. HashMap 사용하는 방법 (이미 해봄)
		 */
		Map<String, String> paramMap = new HashMap<String, String>();
		
		paramMap.put("searchKeyword", searchKeyword);
		int totalCount = bService.getTotalCount(paramMap);
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<BoardVO> searchList = bService.searchBoardByKeword(pInfo, paramMap);
		mv.addObject("sList", searchList);
		mv.addObject("pInfo", pInfo);
		mv.addObject("searchKeyword", searchKeyword);
		mv.setViewName("board/search");
		return mv;
	}
//--------------------------- 페이징 처리 정보저장----------------------------------
	private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		PageInfo pInfo = new PageInfo();
		int recordCountPerPage = pInfo.getRecordCountPerPage();
		int naviCountPerPage = pInfo.getNaviCountPerPage();
		int naviTotalCount;
		int startNavi;
		int endNavi;
		// Math.ceil()을 이용해서 올림하고 int 강제형변환으로 정수가 나오도록 함
		naviTotalCount = (int)Math.ceil((double)totalCount/recordCountPerPage);
		startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1)*naviCountPerPage+1;
		endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		pInfo.setCurrentPage(currentPage);
		pInfo.setNaviTotalCount(naviTotalCount);
		pInfo.setStartNavi(startNavi);
		pInfo.setEndNavi(endNavi);
		return pInfo;
	}
	
//------------------------게시판 수정페이지-----------------------------------------------------
			@RequestMapping(value="/board/update.kw", method=RequestMethod.GET)
			public ModelAndView showUpdateForm(ModelAndView mv, Integer boardNo) {
				try {
					
					BoardVO board = bService.selectBoardByNo(boardNo);
					if(board != null) {
						mv.addObject("board", board);
						mv.setViewName("board/update");
					}else {
						mv.addObject("msg", "데이터 존재안함");
						mv.setViewName("common/errorPage");
					}
				} catch (Exception e) {
					// TODO: handle exception
					mv.addObject("msg", e.getMessage());
					mv.setViewName("common/errorPage");
				}
				return mv;
			}
			


//---------------------------------------- 게시판 수정----------------------------------
			@RequestMapping(value="/board/update.kw", method=RequestMethod.POST)
			public ModelAndView updateBoard(
					ModelAndView mv
					,@ModelAttribute BoardImgVO boardImg
					, @ModelAttribute BoardVO board					
					,@RequestParam(value="reloadFile", required=false) MultipartFile reloadFile
					, HttpServletRequest request) {
				try {
					// 수정 기능 -> 1. 대체, 2. 삭제 후 등록
					if(reloadFile != null && !reloadFile.isEmpty()) {
						String fileName = boardImg.getImgFileRename();
						if(fileName != null) {
							//있으면 기존 파일 삭제
							this.deleteFile(request, fileName);
						}
						//없으면 새로 업로드하려는 파일 저장
						Map<String, Object> infoMap = this.saveFile(request, reloadFile);
						String boardFilename = (String)infoMap.get("fileName");
						boardImg.setImgFilename(boardFilename);
						boardImg.setImgFileRename((String)infoMap.get("fileRename"));
						boardImg.setImgFilepath((String)infoMap.get("filePath"));
						boardImg.setImgFilelength((long)infoMap.get("fileLength"));
					}
					int result = bService.updateBoard(board, boardImg);
					if(result > 0) {
						mv.setViewName("redirect:/board/detail.kw?boardNo="+board.getBoardNo());
//						return "redirect:/notice/detail.kh?noticeNo="+notice.getNoticeNo();
					}else {
						mv.addObject("msg", "데이터 존재안함");
						mv.setViewName("common/errorPage");
					}
				} catch (Exception e) {
					// TODO: handle exception
					mv.addObject("msg", e.getMessage());
					mv.setViewName("common/errorPage");
				}
				return mv;
			}		
			
			
			
	
	//--------------------------------------게시판 등록----------------------------
	// 게시물 등록 페이지, /board/register.kh를 주소표시줄에 입력하면 register.jsp가 나타남
	@RequestMapping(value="/board/register.kw", method=RequestMethod.GET)
	public String showRegisterForm(Model model) {
		return "board/register";
	}
	// 게시물 등록
	@RequestMapping(value="/board/register.kw", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute BoardVO board
			,@ModelAttribute BoardImgVO boardImg
			, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
			, Model model
			, HttpServletRequest request
			, HttpSession session) {
		try {
			String writer = (String)session.getAttribute("userId");
			if(session != null && writer != null && !"".equals(writer)) {
				board.setUserId(writer);
				if(uploadFile != null && !uploadFile.isEmpty()) {
				 	Map<String, Object> bMap = this.saveFile(request, uploadFile);
				 	boardImg.setImgFilename((String)bMap.get("fileName"));
				 	boardImg.setImgFileRename((String)bMap.get("fileRename"));
				 	boardImg.setImgFilepath((String)bMap.get("filePath"));
				 	boardImg.setImgFilelength((long)bMap.get("fileLength"));
				}
			}else {
				model.addAttribute("msg", "로그인이 필요합니다.");
				return "common/errorPage";
			}
			int result = bService.insertBoard(board,boardImg);
			if(result > 0) {
				return "redirect:/board/list.kw";
			}else {
				model.addAttribute("msg", "게시물이 완료되지 않았습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	
	
//------------------------------첨부파일 저장----------------------------------	
	private Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		String boardFolder = request.getSession().getServletContext().getRealPath("resources");
		String savePath = boardFolder + "\\kwloadFiles";
		File saveFolder = new File(savePath);
		if(!saveFolder.exists()) {
			saveFolder.mkdir();		// 저장할 경로에 폴더가 없으면 폴더를 생성하도록 함.
		}
		String fileName = uploadFile.getOriginalFilename();
		// A : 1.png, B : 1.png 
		// 시간으로 파일 리네임하기
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileRename = sdf.format(new Date(System.currentTimeMillis())) + "." + ext;
		File saveFile = new File(savePath+"\\"+fileRename);
		uploadFile.transferTo(saveFile); 	// 이 코드를 통해서 파일이 저장됨.
		Map<String, Object> fileMap = new HashMap<String, Object>();
		fileMap.put("fileName", fileName);
		fileMap.put("fileRename", fileRename);
		fileMap.put("filePath", "../resources/kwloadFiles/"+fileRename);
		fileMap.put("fileLength", uploadFile.getSize());
		return fileMap;
	}
	//-------------------------------- 첨부파일 삭제------------------------------------
	@RequestMapping(value = "/board/delete.kw", method = RequestMethod.GET)
	public ModelAndView deleteBoard(ModelAndView mv, Integer boardNo) {
		try {
			int result = bService.deleteBoard(boardNo);
			if (result > 0) {
				mv.setViewName("redirect:/board/list.kw");
			} else {
				mv.addObject("msg", "데이터조회안됨");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			// TODO: handle exception
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	//--------------------------------- 게시판 삭제-------------------------------------
	private void deleteFile(HttpServletRequest request, String fileName) {
		// TODO Auto-generated method stub
		String rPath = request.getSession().getServletContext().getRealPath("resources");
		String delFilepath = rPath + "\\kwloadFiles\\" + fileName;
		File delFile = new File(delFilepath);
		if(delFile.exists()) {
			delFile.delete();
		}
		
	}
	

	
}

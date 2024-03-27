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

import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.board.domain.BoardImgVO;
import com.oasis.red.board.domain.BoardVO;
import com.oasis.red.board.domain.CommentVO;
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
	
//-----------------------------게시판 묵록------------------------------------
	@RequestMapping(value="/board/list.kw", method=RequestMethod.GET)
	public String showNoticeList(Model model
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		try {
			Integer totalCount = 300;
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			List<BoardVO> bList = bService.selectNoticeList(pInfo);
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
	public String showNoticeDetail(Model model, Integer boardNo) {
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
	
	// 페이징 처리 정보저장
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
			int result = bService.insertBoard(board);
			if(result > 0) {
				return "redirect:/board/list.kh";
			}else {
				model.addAttribute("msg", "공지사항 등록이 완료되지 않았습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	private Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		String boardFolder = request.getSession().getServletContext().getRealPath("resources");
		String savePath = boardFolder + "\\buploadFiles";
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
		fileMap.put("filePath", "../resources/buploadFiles/"+fileRename);
		fileMap.put("fileLength", uploadFile.getSize());
		return fileMap;
	}
}

package com.oasis.red.admin.controller;

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

import com.oasis.red.admin.domain.BoardVO;
import com.oasis.red.admin.domain.PageInfo;
import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.domain.WineVO;
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
	
	// 와인 등록
	@RequestMapping(value="/admin/winelist/register.kw", method=RequestMethod.GET)
	public String ViewadminWineregister() {
		return "admin/wineRegister";
	}
	@RequestMapping(value = "/admin/winelist/register.kw", method = RequestMethod.POST)
	public String adminWineregister(@ModelAttribute WineVO wine,
	                                 @RequestParam(value = "wineAVB") int wineAVB,
	                                 @RequestParam(value = "wineAging") int wineAging,
	                                 @RequestParam(value = "winePrice") int winePrice,
	                                 @RequestParam(value = "wineScore") int wineScore,
	                                 @RequestParam(value = "wineTemp") int wineTemp,
	                                 @RequestParam(value = "wineAcidiry") String wineAcidity,
	                                 @RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
	                                 Model model,
	                                 HttpServletRequest request,
	                                 HttpSession session) {
	    try {
	        Map<String, Object> wMap = this.saveFile(request, uploadFile);
	        wine.setImgFilename((String) wMap.get("fileName"));
	        wine.setImgFileRename((String) wMap.get("fileRename"));
	        wine.setImgFilePath((String) wMap.get("filePath"));
	        wine.setImgFileLength((long) wMap.get("fileLength"));
	        wine.setWineAVB(wineAVB); // 숫자 필드에 대한 값 설정
	        wine.setWineAging(wineAging); 
	        wine.setWinePrice(winePrice); 
	        wine.setWineScore(wineScore); 
	        wine.setWineTemp(wineTemp); 
	        wine.setWineAcidity(wineAcidity);
	        // 이달의 와인 값 체크
	        if(wine.getWineMonth() == null || wine.getWineMonth().equals("")) {
	        	wine.setWineMonth("N");
	        }
	        int result = aService.wineRegister(wine);
	        if(result > 0) {
	        	return ""; // 와인 리스트로 리다이렉트 해 달라
	        }else {
	        	model.addAttribute("msg", "와인등록이 완료되지 않았습니다.");
	        	return "common/errorPage";
	        }
	    } catch (Exception e) {
	        model.addAttribute("msg", e.getMessage());
	        return "common/errorPage";
	    }
	}

	//와이너리 등록
	@RequestMapping(value = "/admin/wineryinsert.kw", method = RequestMethod.GET)
	public ModelAndView showWineryInsertForm(ModelAndView mv) {
		mv.setViewName("admin/wineryinsert");
		return mv;
	}
	
	@RequestMapping(value = "/admin/wineryinsert.kw", method = RequestMethod.POST)
	public ModelAndView wineryInsert(ModelAndView mv
			,@ModelAttribute WineryVO winery
			,@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile
			,HttpServletRequest request
			,HttpSession session) {
		try {
			Map<String, Object> infoMap = this.saveFile(request, uploadFile);
			winery.setImgFilename("fileName");
			winery.setImgFilerename("fileRename");
			winery.setImgFilepath("filePath");
			winery.setImgFilelength((long)infoMap.get("fileLength"));
			
			int result = aService.wineryInsert(winery);
			if(result > 0) {
				mv.setViewName("admin/winerylist");
			}else {
				mv.addObject("msg", "와이너리 정보를 등록할 수 없습니다 관리자에게 문의해주십시오");
				mv.setViewName("common/errorPage");
			}
			
			mv.setViewName("admin/wineryinsert");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	// 와리너리 관리
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
	// 파일 업로드
	private Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		String boardFolder = request.getSession().getServletContext().getRealPath("resources");
		String savePath = boardFolder + "\\buploadFiles";
		File saveFolder = new File(savePath);
		if(!saveFolder.exists()) {
			saveFolder.mkdir();
		}
		String fileName = uploadFile.getOriginalFilename();
		// 시간으로 파일 리네임
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileRename = sdf.format(new Date(System.currentTimeMillis())) + "." + ext;
		// 파일 저장하는 코드
		File saveFile = new File(savePath+"\\"+fileRename);
		uploadFile.transferTo(saveFile);
		Map<String, Object> fileMap = new HashMap<String, Object>();
		fileMap.put("fileName", fileName);
		fileMap.put("fileRename", fileRename);
		fileMap.put("filePath", "../resources/buploadFiles/"+fileRename);
		fileMap.put("fileLength", uploadFile.getSize());
		return fileMap;
	}
}

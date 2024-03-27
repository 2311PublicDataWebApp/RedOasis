package com.oasis.red.education.controller;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oasis.red.education.domain.EducationVO;
import com.oasis.red.education.domain.PageInfo;
import com.oasis.red.education.service.EducationService;


@Controller
public class EducationController {
	
	@Autowired
	private EducationService nService;
	
	
	// 공지사항 목록
	@RequestMapping(value = "/education/list.kw", method = RequestMethod.GET)
	public ModelAndView showNoticeList(ModelAndView mv
			, @RequestParam(value = "page", required = false, defaultValue = "1") 
				Integer currentPage) {
	    try {
//	        int totalCount = nService.getTotalCount();
//	        PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
	        List<EducationVO> eList = nService.selecteducationList();
	        mv.addObject("eList", eList);
//	        mv.addObject("pInfo", pInfo);
	        mv.setViewName("education/educationListTest");
	    } catch (Exception e) {
	        // 예외 처리
	        mv.addObject("msg", e.getMessage());
	        mv.setViewName("common/errorPage");
	    }
	    return mv;
	}
	

	
	// 공지사항 검색
	@RequestMapping(value="/education/search.kw", method=RequestMethod.GET)
	public ModelAndView searcheducationList(ModelAndView mv
			, @RequestParam("searchCondition") String searchCondition
			, @RequestParam("searchKeyword") String searchKeyword
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		/*
		 * 2개의 값을 하나의 변수로 다루는 방법
		 * 1. VO 클래스를 만드는 방법(이미 해봄)
		 * 2. HashMap 사용하는 방법(이미 해봄)
		 */
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("searchCondition", searchCondition);
		paramMap.put("searchKeyword", searchKeyword);
		int totalCount = nService.getTotalCount(paramMap);
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<EducationVO> searchList = nService.searcheducationByKeyword(pInfo, paramMap);
		mv.addObject("sList", searchList);
		mv.addObject("pInfo", pInfo);
		mv.addObject("searchCondition", searchCondition);
		mv.addObject("searchKeyword", searchKeyword);
		mv.setViewName("education/search");
		return mv;
	}
	
	// 공지사항 등록 GET
	@RequestMapping(value="/education/insert.kw", method=RequestMethod.GET)
    public ModelAndView showInsertForm(ModelAndView mv) {
        mv.setViewName("education/educationInsert");
        return mv;
    }
	
	// 공지사항 등록 POST
	@RequestMapping(value = "/education/insert.kw", method = RequestMethod.POST)
	public ModelAndView inserteducation(ModelAndView mv
			, @ModelAttribute EducationVO education
			, @RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile
			, HttpServletRequest request) {
		try {
			if (uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				Map<String, Object> infoMap = this.saveFile(uploadFile, request);
				String fileName 	    = (String) infoMap.get("fileName");
				String fileRename 	= (String) infoMap.get("fileRename");
				String filePath	    = (String) infoMap.get("filePath");
				long fileLength 	    = (long) infoMap.get("fileSize");
				
				education.setImgFileName(fileName);
				education.setImgFileRename(fileRename);
				education.setImgFilePath(filePath);
				education.setImgFileLength(fileLength);
			}
			int result = nService.inserteducation(education);
			if (result > 0) {
				mv.setViewName("redirect:/education/list.kw");
			} else {
				mv.addObject("msg", "공지사항 등록이 완료되지 못했습니다.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			// TODO: handle exception
			mv.addObject("msg", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 공지사항 상세보기
	@RequestMapping(value = "/education/detail.kw", method = RequestMethod.GET)
	public ModelAndView showeducationDetail(ModelAndView mv, @RequestParam(name = "educationNo") Integer educationNo) {
	    try {
	        if (educationNo != null) {
	            EducationVO education = nService.selectByeducationNo(educationNo);
	            if (education != null) {
	                mv.addObject("education", education).setViewName("education/educationDetailTest");
	            } else {
	                mv.addObject("msg", "데이터 불러오기가 완료되지 못했습니다.");
	                mv.setViewName("common/errorPage");
	            }
	        } else {
	            mv.addObject("msg", "공지사항 번호가 전달되지 않았습니다.");
	            mv.setViewName("common/errorPage");
	        }
	    } catch (Exception e) {
	        mv.addObject("msg", e.getMessage()).setViewName("common/errorPage");
	    }
	    return mv;
	}

	// 공지사항 수정 GET
	@RequestMapping(value = "/education/modify.kw", method = RequestMethod.GET)
	public ModelAndView showModifyForm(ModelAndView mv, int educationNo) {
		try {
			EducationVO education = nService.selectByeducationNo(educationNo);
			if (education != null) {
				mv.addObject("education", education);
				mv.setViewName("education/modify");
			} else {
				mv.addObject("msg", "데이터 불러오기가 완료되지 못했습니다.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			// TODO: handle exception
			mv.addObject("msg", e.getMessage()).setViewName("common/errorPage");
		}
		return mv;
	}

	// 공지사항 수정 POST
	@RequestMapping(value = "/education/modify.kw", method = RequestMethod.POST)
	public ModelAndView updateeducation(ModelAndView mv, @ModelAttribute EducationVO education,
			@RequestParam(value = "reloadFile", required = false) MultipartFile reloadFile, HttpServletRequest request,
			int educationNo) {
		try {
			/*
			 * 수정 기능 
			 * 1. 대체 : 기능 없음 
			 * 2. 삭제 후 등록 : 파일이 있는지 없는지 확인 후, 삭제 후, 등록
			 */
			if (reloadFile != null && !reloadFile.isEmpty()) {
				String fileName = education.getImgFileRename();
				if (fileName != null) {
					// 있으면 파일 삭제
					this.deleteFile(request, fileName);
				}
				// 없으면 새로 업로드하려는 파일 저장
				Map<String, Object> infoMap = this.saveFile(reloadFile, request);
				String educationFileName = (String) infoMap.get("fileName");
				education.setImgFileName(educationFileName);
				education.setImgFileRename((String) infoMap.get("fileRename"));
				education.setImgFilePath((String) infoMap.get("filePath"));
				education.setImgFileLength((long) infoMap.get("fileSize"));
			}
			int result = nService.updateeducation(education);
			if (result > 0) {
				mv.setViewName("redirect:/education/detail.kw?educationNo=" + education.getEducationNo());
			} else {
				mv.addObject("msg", "데이터가 존재하지 않습니다.");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			// TODO: handle exception
			mv.addObject("msg", e.getMessage()).setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 공지사항 삭제
	@RequestMapping(value = "/education/delete.kw", method = RequestMethod.GET)
	public ModelAndView deleteeducation(ModelAndView mv, int educationNo) {
		try {
			int result = nService.deleteeducation(educationNo);
			if (result > 0) {
				mv.setViewName("redirect:/education/list.kw");
			} else {
				mv.addObject("msg", "데이터가 존재하지 않습니다.").setViewName("common/errorPage");
			}
		} catch (Exception e) {
			// TODO: handle exception
			mv.addObject("msg", e.getMessage()).setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 페이징 처리
		private PageInfo getPageInfo(Integer currentPage, int totalCount) {
			PageInfo pi = null;
			int recordCountPerPage = 9; // 한 페이지당 보여줄 게시물의 갯수
			int naviCountPerPage = 5; 	 // 한 페이지당 보여줄 범위의 갯수
			int naviTotalCount; 		 // 범위의 총 갯수
			int startNavi;
			int endNavi;
			
			naviTotalCount = (int)((double) totalCount / recordCountPerPage + 0.9);
			startNavi = (((int)((double) currentPage / naviCountPerPage + 0.9)) - 1) * naviCountPerPage + 1;
			endNavi = startNavi + naviCountPerPage - 1;
			if (endNavi > naviTotalCount) {
				endNavi = naviTotalCount;
			}
			pi = new PageInfo(currentPage, totalCount, naviTotalCount, recordCountPerPage, naviCountPerPage, startNavi,
					endNavi);
			return pi;
		}
	
	// 첨부파일 저장
	private Map<String, Object> saveFile(MultipartFile uploadFile, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		// 파일 이름
		String fileName = uploadFile.getOriginalFilename();
		// 저장 경로
		String projectPath 	 = request.getSession().getServletContext().getRealPath("resources");
		String saveDirectory = projectPath + "\\nuploadFiles";
		File sDir 			 = new File(saveDirectory);
		if (!sDir.exists()) {
			sDir.mkdir(); //nuploadFile 폴더가 없으면 자동으로 만들어줌
		}
		// 파일 리네임의 필요성!!
		// 사용자A와 사용자B가 모두 내용은 다르지만 이름이 같은 1.PNG 파일을 올길 경우를 대비해
		// 위와 같은 파일을 구별하기 위해서 리네임을 할 때에는 올린 시간을 기준으로 파일이름을 만들어서 따로 저장(education_FILERENAME)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // 나중에 대문자 SS와 소문자 ss 비교해보기
		String strResult = sdf.format(new Date(System.currentTimeMillis())); // 원본파일의 확장자 글자부터 시작되도록 +1 해줌
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String fileRename = strResult + "." + ext;
//		Date date = new Date();
		
		String savePath 	 = saveDirectory + "\\" + fileRename;
		File file = new File(savePath);
		// 파일 저장
		uploadFile.transferTo(file);
		// DB에 저장할 파일정보 셋팅
		// 1. 파일이름, 2. 파일리네임, 3. 파일경로, 4. 파일크기
		long fileLength = uploadFile.getSize();
		Map<String, Object> infoMap = new HashMap<String, Object>();
		infoMap.put("fileName"	, fileName);
		infoMap.put("fileRename", fileRename);
		infoMap.put("filePath"	, savePath);
		infoMap.put("fileSize"	, fileLength);
		return infoMap;
	}
	
	// 파일 재업로드 시, 기존 파일 삭제
	private void deleteFile(HttpServletRequest request, String fileName) {
		// TODO Auto-generated method stub
		String rPath = request.getSession().getServletContext().getRealPath("resources");
		String delFilePath = rPath + "\\nuploadFiles\\" + fileName;
		File delFile = new File(delFilePath);
		if (delFile.exists()) {
			delFile.delete();
		}
	}
}

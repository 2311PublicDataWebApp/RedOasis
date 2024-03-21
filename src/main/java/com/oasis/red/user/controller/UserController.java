package com.oasis.red.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


//import com.oasis.red.user.domain.PageInfo;
import com.oasis.red.user.domain.UserVO;
import com.oasis.red.user.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService uService;

//------------------------로그인---------------------------------------------------------------------------------
	@RequestMapping(value = "/user/login.kw", method = RequestMethod.GET)
	public String showLoginPage() {
		return "user/login";
	}

	@RequestMapping(value = "/user/login.kw", method = RequestMethod.POST)
	public String loginPage(String userId, String userPw, Model model, HttpSession session) {
		try {
			UserVO user = new UserVO(userId, userPw);
			UserVO uOne = uService.checkUserLogin(user);
			if (uOne != null) {
				// 로그인 성공!, Session에 저장
				session.setAttribute("userId", uOne.getUserId());
				session.setAttribute("userName", uOne.getUserName());
			} else {
				// 로그인 실패, No Data Found!
				model.addAttribute("msg", "No Data Found!!");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			// 그 외의 오류 발생(쿼리문 오타, NullPointerExceptino 등..)
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		return "redirect:/index.jsp";
	}

//--------------------로그 아웃--------------------------------------------------------------------------------

	@RequestMapping(value = "/user/logout.kw", method = RequestMethod.GET)
	public String userLogout(HttpSession session, Model model) {
		try {
			if (session != null) {
				session.invalidate();
				return "redirect:/";
			} else {
				model.addAttribute("msg", "로그아웃을 완료하지 못하였습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

//----------------------------아이디 찾기----------------------------------------------------- 
	@RequestMapping(value = "/user/findid.kw", method = RequestMethod.GET)
	public String showFindIdPage() {
		return "user/findId";
	}

	@RequestMapping(value = "/user/findid.kw", method = RequestMethod.POST)
	public String findId(@RequestParam("userEmail") String userEmail, Model model) {
		try {
			String foundId = uService.findIdByEmail(userEmail);
			if (foundId != null) {
				// 아이디를 찾았을 경우 해당 아이디를 보여줌
				model.addAttribute("foundId", foundId);
				return "user/foundId"; // 아이디를 보여주는 페이지로 이동
			} else {
				// 이메일로 등록된 아이디가 없을 경우
				model.addAttribute("msg", "입력하신 이메일로 등록된 아이디가 없습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

//-------------------------비밀번호 찾기----------------------------------------------------------
	@RequestMapping(value = "/user/findpassword.kw", method = RequestMethod.GET)
	public String showFindPasswordPage() {
		return "user/findPassword";
	}

	@RequestMapping(value = "/user/findpassword.kw", method = RequestMethod.POST)
	public String processResetPassword(@RequestParam("userId") String userId,
			@RequestParam("userEmail") String userEmail, Model model) {
		try {
			// 입력된 아이디와 이메일로 회원 정보 조회
			UserVO mParam = new UserVO();
			mParam.setUserId(userId);
			mParam.setUserEmail(userEmail);
			UserVO user = uService.getUserByIdAndEmail(mParam);

			if (user != null) {
				// 회원 정보가 일치하는 경우, 비밀번호 재설정 페이지로 이동
				model.addAttribute("userId", userId);
				return "user/changepassword"; // 비밀번호 재설정 폼으로 이동
			} else {
				// 회원 정보가 일치하지 않는 경우, 에러 메시지를 모델에 추가하여 다시 비밀번호 재설정 페이지로 이동
				model.addAttribute("errorMessage", "입력하신 아이디 또는 이메일이 일치하지 않습니다.");
				return "common/errorPage"; // 비밀번호 재설정 페이지로 이동
			}
		} catch (Exception e) {
			// 비밀번호 재설정 과정에서 예외가 발생한 경우, 에러 메시지를 모델에 추가하여 에러 페이지로 이동
			model.addAttribute("errorMessage", "비밀번호 재설정 중 오류가 발생했습니다: " + e.getMessage());
			return "common/errorPage"; // 에러 페이지로 이동
		}
	}

	// 비밀번호 변경을 처리하는 POST 메서드
	@RequestMapping(value = "/user/changepassword.kw", method = RequestMethod.POST)
	public String changePassword(@RequestParam("userId") String userId, @RequestParam("userPw") String userPw,
			Model model) {
		try {
			// 비밀번호 변경 로직을 수행하는 서비스 메서드 호출
			UserVO user = new UserVO(userId, userPw);
			uService.changePassword(user);
			return "redirect:/user/login.do"; // 비밀번호 재설정 성공 페이지로 이동
		} catch (Exception e) {
			// 비밀번호 변경 과정에서 예외가 발생한 경우, 에러 메시지를 모델에 추가하여 에러 페이지로 이동
			model.addAttribute("errorMessage", "비밀번호 변경 중 오류가 발생했습니다: " + e.getMessage());
			return "common/errorPage"; // 에러 페이지로 이동
		}
	}

//------------------------------회원 가입-------------------------------------------------------    
	@RequestMapping(value= "/user/register.kw", method=RequestMethod.GET)
	public String showRegisterPage() {
		return "user/register";
	}

	@RequestMapping(value = "/user/register.kw", method = RequestMethod.POST)
	public String registerPage(@ModelAttribute UserVO user, Model model) {
		try {

			int result = uService.registerUser(user);
			if (result > 0) {
				// 로그인 페이지
				return "redirect:/";
			} else {

				model.addAttribute("msg", "Service Failed!");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			// 예외발생시 에러페이지
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

//-----------------------------------회원 정보 수정------------------------------------------------    

	// 회원 정보 수정 페이지 이동
	@RequestMapping(value = "/user/updateuser.kw", method = RequestMethod.GET)
	public String showUpdatePage(HttpSession session, Model model) {
		try {
			String userId = (String) session.getAttribute("userId");
			UserVO user = null;
			if (userId != null) {
				user = uService.getOneById(userId);
			}
			if (user != null) {
				model.addAttribute("user", user);
				return "user/update";
			} else {
				model.addAttribute("msg", "회원 정보 조회를 완료하지 못하였습니다.");
				return "common/errorPage";
			}

		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

	// 회원 정보 수정
	@RequestMapping(value = "/user/update.kw", method = RequestMethod.POST)
	public String updatePage(@ModelAttribute UserVO user, Model model) {
		try {
			int result = uService.updateUser(user);
			if (result > 0) {
				// success -> 페이지 이동
				return "redirect:/";
			} else {
				// fail -> 에러페이지 이동
				model.addAttribute("msg", "회원 정보 수정을 완료하지 못하였습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value = "/user/modify.kw", method = RequestMethod.GET)
	public String updateUserByAdmin(String userId, Model model) {
		try {
			UserVO user = uService.getOneById(userId);
			if (user != null) {
				model.addAttribute("user", user);
				return "user/update";
			} else {
				model.addAttribute("msg", "회원 정보 조회를 완료하지 못하였습니다.");
				return "common/errorPage";
			}			
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

//--------------------------------회원 탈퇴-----------------------------------    
	@RequestMapping(value = "/user/delete.kw", method = RequestMethod.GET)
	public String deleteUser(String userId, HttpSession session, Model model) {
		try {
			String sessionId = (String) session.getAttribute("userId");
			int result = 0;
			// 세션에 있는 아이디와 지우려고 하는 아이디가 같은 확인 or 관리자 아이디이면
			if ((sessionId != null && sessionId.equals(userId)) || "admin".equals(sessionId)) {
				result = uService.deleteUser(userId);
			} else {
				model.addAttribute("msg", "로그인을 해야 합니다.");
				return "common/errorPage";
			}
			// 회원탈퇴가 성공했는지 확인
			if (result > 0) {
				if ("admin".equals(sessionId)) {
					return "redirect:/";
				} else {
					return "redirect:/user/logout.do";					
				}
			} else {
				model.addAttribute("msg", "회원 탈퇴가 완료되지 않았습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

	// 회원 목록
	//@RequestMapping(value = "/user/list.kw", method = RequestMethod.GET)
	//public String showProductList(Model model, HttpServletRequest request,
			//@RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage) {
		//try {
			//int totalCount = uService.getTotalCount();
			//PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			//List<UserVO> mList = uService.selectMemberList(pInfo);
			//if (!mList.isEmpty()) {
				//model.addAttribute("mList", mList);
				//model.addAttribute("pInfo", pInfo);
			//} else {
				//model.addAttribute("mList", null);
			//}
			//return "member/list";
		//} catch (Exception e) {
			//model.addAttribute("msg", e.getMessage());
			//return "common/errorPage";
		//}

	//}

}

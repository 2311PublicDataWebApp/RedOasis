package com.oasis.red.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oasis.red.admin.domain.UserVO;
import com.oasis.red.admin.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping(value= "/admin/userlist.kw", method=RequestMethod.GET)
	public String adminUserList (Model model) {
		try {
			List<UserVO> uList = aService.selectUserList();
			model.addAttribute("uList", uList);
			return "admin/userlist";
			
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		
	}
}

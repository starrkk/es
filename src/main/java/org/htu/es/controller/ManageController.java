package org.htu.es.controller;

import javax.annotation.Resource;

import org.htu.es.service.ManageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**   
* @Title: ManageController.java 
* @Package org.htu.es.controller 
* @Description: TODO(管理员管理功能) 
* @author guang
* @date 2017年6月9日 上午11:56:50 
* @version V1.0   
*/
@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@Resource(name="manageService")
	private ManageService manageService;
	
	/**
	 * 显示登录界面
	 * */
	@RequestMapping("/login")
	public String showPage(){
		return "managelogin";
	}
	/**
	 * 管理员登录验证
	 * */
	@RequestMapping("/verify")
	public String  verify(String username, String password){
		boolean verify = manageService.verify(username, password);
		if (verify){
			return "manage";	
		}else{
			return "managelogin";
		}
	}
	
	
}

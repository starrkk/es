package org.htu.es.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.htu.es.pojo.User;
import org.htu.es.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Resource(name="userService")
	private UserService userService;
	
	
	@RequestMapping("/")
	public Object showIndex(){
		return "index";
	}
		
	@RequestMapping("/user/newregister")
	public Object newregister(){
		return "register";
	}
	@RequestMapping("/user/newlogin")
	public Object NewLogin(Model model){
		
		return "login";
	}
	/**
	 * 查询成绩入口
	 * 
	 * */
	@RequestMapping("/user/access")
	public String access(){
		return "accessgrade";
	}
	
	/**
	 * 报考/注册
	 * */
	@RequestMapping("/user/register")
	public Object addUser(HttpSession session, String name, String qq, String phone, String IDNumber, String examtype  ){
		boolean flag = userService.register(name, qq, phone, IDNumber, examtype);
		if(flag){
			long id = userService.getIdByIDNumber(IDNumber);
			session.setAttribute("id", id);
			return "registersuccess";
		}else{
			return "/";
		}
		
	}
	
	/**
	 * 开始考试/登录
	 * 需要验证考生信息/准考证号
	 * 
	 * */
	@RequestMapping("/user/login")
	public Object login(HttpSession session, long id){
			
		User user = userService.login(id);
			session.setAttribute("user", user);
			return "confirm";
	}

	/**
	 * 注销/
	 * */
	@RequestMapping("/user/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		session.removeAttribute("grade");
		return "login";
	}
	
}

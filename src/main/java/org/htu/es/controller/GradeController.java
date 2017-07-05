package org.htu.es.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.htu.es.pojo.Grade;
import org.htu.es.pojo.User;
import org.htu.es.service.GradeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**   
* @Title: GradeController.java 
* @Package org.htu.es.controller 
* @Description: TODO(评分用到的controller) 
* @author guang
* @date 2017年6月9日 上午9:42:29 
* @version V1.0   
*/
@Controller
@RequestMapping("/grade")
public class GradeController {
	@Resource(name="gradeService")
	private GradeService gradeService;
	
	/**
	 * 交卷
	 * */
	@RequestMapping("/save")
	public Object savagrade(HttpSession session){
		int grade;
		User user =(User) session.getAttribute("user");
		long uid = user.getId();
		if(session.getAttribute("grade") == null){
			grade = 0;
		}else{
			grade =(int)session.getAttribute("grade");
		}
		String examtype = user.getExamtype();
		gradeService.savegrade(uid, grade, examtype);
		Grade t_grade = gradeService.showgrade(uid, examtype);
		session.setAttribute("t_grade", t_grade);
		return "tgrade";	
	}
	/**
	 * 查询成绩
	 * 
	 * */
	@RequestMapping("/show")
	public Object showgrade(HttpSession session, long uid, String examtype){
		Grade t_grade = gradeService.showgrade(uid, examtype);
		session.setAttribute("t_grade", t_grade);
		return "tgrade";
	}
}

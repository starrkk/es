package org.htu.es.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.htu.es.pojo.QuestionBank;
import org.htu.es.pojo.User;
import org.htu.es.service.QuestionBankService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/question")
public class QuestionBankController {
	
	@Resource(name="questionBankService")
	private QuestionBankService questionBankService;
	
	
	/**
	 * 这个是用来随机出一个问题列表存放在session中
	 * */
	@RequestMapping("/show")
	public Object questions(HttpSession session){
		User user = (User) session.getAttribute("user");
		String examtype = user.getExamtype();
		List<QuestionBank> questionlist= questionBankService.questions(examtype);
		session.setAttribute("questionlist", questionlist);
		
		//设置60分钟的考试时间
		long millis = System.currentTimeMillis()+(60*60*1000);
		session.setAttribute("millis", millis);
	
		return "questionbefore"; 
		
	}
	/**
	 * 取出 questionlist中的每一个问题在页面上显示
	 * */
	@RequestMapping("/show_one")
	public Object question(HttpSession session, Integer i, String q, Integer grade){

		if(i == null){
			i = 0;
		}
		grade = (Integer)session.getAttribute("grade");
		if( grade == null){
			grade = 0;
		}
		if(i<40){
			
			List<QuestionBank> questionlist= (List<QuestionBank>) session.getAttribute("questionlist");
			if(i!=0){
				//System.out.println(questionlist.get(i-1).getAnswer().equals(q));
				if(questionlist.get(i-1).getAnswer().equals(q)){
					grade++;
				}
				session.setAttribute("grade", grade);
			}
			session.setAttribute("i", i+1);
			session.setAttribute("question", questionlist.get(i));
			return "question";
		}else{
			return "takein";
		}
		
	}
	
	
	
	
	
	
	
}

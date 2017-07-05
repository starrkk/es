package org.htu.es.service.impl;

import org.htu.es.mapper.GradeMapper;
import org.htu.es.pojo.Grade;
import org.htu.es.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("gradeService")
@Transactional
public class GradeServiceImpl implements GradeService {

	@Autowired
	private GradeMapper gradeMapper;
	
	
	@Override
	public boolean savegrade(long uid, int grade, String examtype) {
		//判断用户是否以前考过试
		
		int c = gradeMapper.selectByUid(uid);
		if(c>0){
			gradeMapper.uptateByUid(grade, uid, examtype);
		}else{
			Grade tb_grade = new Grade();
			tb_grade.setUid(uid);
			tb_grade.setGrade(grade);
			tb_grade.setExamtype(examtype);
			gradeMapper.savegrade(tb_grade);
		}
		
		return false;
	}

	@Override
	public Grade showgrade(long uid, String examtype) {
		//
		Grade grade = gradeMapper.showgrade(uid,examtype);
		if(grade == null | "".equals(grade)){
			throw new RuntimeException("不存在该考生信息，请核对准考证号");
		}
		return gradeMapper.showgrade(uid,examtype);
	}

}

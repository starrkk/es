package org.htu.es.mapper;

import org.htu.es.pojo.Grade;
import org.springframework.stereotype.Repository;

@Repository
public interface GradeMapper {
	
	/**
	 * 根据uid判断用户是否已经有过考试
	 * */
	int selectByUid(long uid);
	
	/**
	 * 
	 * 更新考生成绩
	 * */
	void uptateByUid(int grade, long uid, String examtype);
	
	
	
	/**
	 * 存入考生成绩
	 * */
	boolean savegrade(Grade grade);
	
	
	/**
	 * 查看考生成绩
	 * */
	Grade showgrade(long uid, String examtype);
}

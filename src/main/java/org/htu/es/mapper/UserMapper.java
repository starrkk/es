package org.htu.es.mapper;

import org.htu.es.pojo.User;
import org.springframework.stereotype.Repository;
@Repository
public interface UserMapper {
	/**
	 * 考生报考，也就是注册
	 * */
	boolean register(User user);
	
	/**根据考生身份证号查询考生准考证号
	 * */
	long getIdByIDNumber(String IDNumber);
	
	/**
	 * 判断用户是否存在
	 * */
	int countUser(String IDNumber);
	
	
	/**
	 * 登录考试
	 * */
	User login(long id);  //id 准考证号
	
}

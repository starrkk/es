package org.htu.es.service.impl;


import org.htu.es.mapper.UserMapper;
import org.htu.es.pojo.User;
import org.htu.es.service.UserService;
import org.htu.es.util.IDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean register(String name, String qq, String phone, String IDNumber, String examtype) {
		// TODO Auto-generated method stub
		//判断是否已经注册过
		int count = userMapper.countUser(IDNumber);
		if(count == 0){
			
			User user = new User(); 
			user.setId(IDUtils.genItemId());
			user.setName(name);
			user.setRole("用户");
			if(qq != null){
				
				user.setQq(qq);
			}
			if(phone != null){
				
				user.setPhone(phone);
			}
			user.setIDNumber(IDNumber);
			user.setExamtype(examtype);
			userMapper.register(user);
			return true;
			
		}else{
			
			throw new RuntimeException("该考生已报考");
			
		}
		
	}

	@Override
	public User login(long id) {
		// TODO Auto-generated method stub
		
		if(userMapper.login(id) == null){
			
			throw new RuntimeException("不存在该考生信息，请核对您的准考证号！");
		
		}else{
			User user = new User();
			user = userMapper.login(id);
			return user;
		}
		
	}

	@Override
	public long getIdByIDNumber(String IDNumber) {
		// TODO Auto-generated method stub
		
		return userMapper.getIdByIDNumber(IDNumber);
	}

}

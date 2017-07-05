package org.htu.es.service.impl;

import org.htu.es.mapper.ManageMapper;
import org.htu.es.pojo.Manage;
import org.htu.es.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("manageService")
@Transactional
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper manageMapper;
	
	@Override
	public boolean verify(String username, String password) {
		//查询数据库中是否有username
		Manage manage = manageMapper.verify(username);
		if(manage!=null){
			//有，，，验证密码是否正确
			if(manage.getPassword().equals(password)){
				return true;
			}else{
				throw new RuntimeException("管理员密码输入有误");
			}
		}else{
			throw new RuntimeException("不存在该管理员名称");
		}

	}

}

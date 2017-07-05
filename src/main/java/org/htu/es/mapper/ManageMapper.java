package org.htu.es.mapper;

import org.htu.es.pojo.Manage;
import org.springframework.stereotype.Repository;
@Repository
public interface ManageMapper {
	/**
	 * 管理员身份验证
	 * */
	Manage verify(String username);
}

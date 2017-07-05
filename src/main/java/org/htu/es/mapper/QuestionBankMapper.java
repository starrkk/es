package org.htu.es.mapper;

import java.util.List;

import org.htu.es.pojo.QuestionBank;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionBankMapper {
	/**
	 * 随机从数据库中选出40道选择题
	 * */
	List<QuestionBank> questions(String examtype);
}

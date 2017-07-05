package org.htu.es.service.impl;

import java.util.List;

import org.htu.es.mapper.QuestionBankMapper;
import org.htu.es.pojo.QuestionBank;
import org.htu.es.service.QuestionBankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("questionBankService")
@Transactional
public class QuestionBankServiceImpl implements QuestionBankService {
	
	@Autowired
	private QuestionBankMapper questionBankMapper;
	
	@Override
	public List<QuestionBank> questions(String examtype) {
		// TODO Auto-generated method stub
		
		return questionBankMapper.questions(examtype);
	}

}

package org.htu.es.service;

import java.util.List;

import org.htu.es.pojo.QuestionBank;

public interface QuestionBankService {
	
	List<QuestionBank> questions(String examtype);

	
}

package org.htu.es.service;

import org.htu.es.pojo.Grade;

public interface GradeService {

	
	boolean savegrade(long uid, int grade, String examtype);
	
	Grade showgrade(long uid, String examtype);
}

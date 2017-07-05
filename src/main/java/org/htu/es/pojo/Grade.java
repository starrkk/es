package org.htu.es.pojo;

import java.io.Serializable;

public class Grade implements Serializable {
	private int id;  //
	private long uid;  //用户id
	private int grade;  //用户成绩
	private String examtype;  //考试类型
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	

	public String getExamtype() {
		return examtype;
	}

	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}

	public String toString(){
		return "Grade[id="+id+",uid="+uid+",grade="+grade+",examtype="+examtype+"]";
		
	}
}

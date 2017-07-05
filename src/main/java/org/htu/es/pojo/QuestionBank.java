package org.htu.es.pojo;

import java.io.Serializable;

public class QuestionBank implements Serializable {
	private int id;  //
	private String examtype;  //问题类型
	private String question;  // 问题
	private String A;   //选项A
	private String B;   //选项B
	private String C;   //选项C
	private String D;   //选项D
	private String answer;   //正确答案
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getExamtype() {
		return examtype;
	}

	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}
	
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getA() {
		return A;
	}

	public void setA(String a) {
		A = a;
	}

	public String getB() {
		return B;
	}

	public void setB(String b) {
		B = b;
	}

	public String getC() {
		return C;
	}

	public void setC(String c) {
		C = c;
	}

	public String getD() {
		return D;
	}

	public void setD(String d) {
		D = d;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String toString(){
		return "QuestionBank[id="+id+",examtype="+examtype+",question="+question+",A="+A+",B="+B+",C="+C+",D="+D+",answer="+answer+"]";
		
	}


}

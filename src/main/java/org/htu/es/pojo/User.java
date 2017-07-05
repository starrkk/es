package org.htu.es.pojo;

import java.io.Serializable;

public class User implements Serializable{
	private long id;  //用户名
	private String name;  //姓名
	private String qq;  //qq号
	private String role;   //角色
	private String phone;  //手机号
	private String IDNumber;  //身份证号
	private String examtype;  //考试类型
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}
	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIDNumber() {
		return IDNumber;
	}

	public void setIDNumber(String iDNumber) {
		IDNumber = iDNumber;
	}

	public String getExamtype() {
		return examtype;
	}

	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}

	public String toString(){
		
		return "User[id="+id+",name="+name+",qq="+qq+",phone="+phone+",IDNumber="+IDNumber+"]";
		
	}
}

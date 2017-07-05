package org.htu.es.pojo;

import java.io.Serializable;

public class Manage implements Serializable{
	private int id;  //管理员id
	private String username;   // 管理员登录名
	private String password;   //管理员密码
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String toString(){
		return "Manage[id="+id+",username="+username+",password="+password+"]"	;
		
	}

}

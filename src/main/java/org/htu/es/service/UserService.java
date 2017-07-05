package org.htu.es.service;



import org.htu.es.pojo.User;

public interface UserService {
	boolean register(String name, String qq, String phone, String IDNumber, String examtype);
	long getIdByIDNumber(String IDNumber);
	User login(long id);
}

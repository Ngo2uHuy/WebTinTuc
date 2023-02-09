package com.laptrinh.service.impl;

import javax.inject.Inject;

import com.laptrinh.dao.IUserDAO;
import com.laptrinh.model.UserModel;
import com.laptrinh.service.IUserService;

public class UserService implements IUserService {
	
	@Inject
	private IUserDAO userDAO;

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName,password,status);
		 
	}
		

}

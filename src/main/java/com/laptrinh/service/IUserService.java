package com.laptrinh.service;

import com.laptrinh.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password,Integer status);
}

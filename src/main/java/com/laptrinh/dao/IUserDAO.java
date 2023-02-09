package com.laptrinh.dao;

import java.util.List;

import com.laptrinh.model.NewModel;
import com.laptrinh.model.UserModel;
import com.laptrinh.paging.Pageble;

public interface IUserDAO extends GenericDAO<UserModel> {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password,Integer status);
}

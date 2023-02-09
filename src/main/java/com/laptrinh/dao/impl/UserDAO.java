package com.laptrinh.dao.impl;

import java.util.List;

import com.laptrinh.dao.IUserDAO;
import com.laptrinh.mapper.UserMapper;
import com.laptrinh.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		StringBuilder sql=new StringBuilder("select * from user u ");
		sql.append(" inner join role r on r.id=u.id");
		sql.append(" where username= ? and password=? and status=?");  
		List<UserModel> users=query(sql.toString(),new UserMapper(),userName,password,status);
		return users.isEmpty()?null:users.get(0);
	}



}

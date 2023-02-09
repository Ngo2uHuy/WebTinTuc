package com.laptrinh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.laptrinh.model.RoleModel;
import com.laptrinh.model.UserModel;

public class UserMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs) {
		try {
			UserModel users = new UserModel();
			users.setId(rs.getLong("id"));
			users.setUserName(rs.getString("username"));
			users.setFullName(rs.getString("fullname"));
			users.setPassword(rs.getString("password"));
			users.setStatus(rs.getInt("status"));
			users.setRoleId(rs.getLong("roleid"));
			try {
				RoleModel role = new RoleModel();
				role.setCode(rs.getString("code"));
				role.setName(rs.getString("name"));
				users.setRole(role);
			}catch(Exception e) {
				System.out.print(e.getMessage());
			}
			users.setCreatedDate(rs.getTimestamp("createddate"));
			users.setCreatedBy(rs.getString("createdby"));
			if (rs.getTimestamp("modifieddate") != null) {
				users.setModifiedDate(rs.getTimestamp("modifieddate"));
			}
			if (rs.getTimestamp("modifiedby") != null) {
				users.setModifiedBy(rs.getString("modifiedby"));
			}
			return users;
		} catch (SQLException e) {
			return null;
		}

	}
}

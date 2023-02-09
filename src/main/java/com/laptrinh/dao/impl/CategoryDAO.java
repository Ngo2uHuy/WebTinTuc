package com.laptrinh.dao.impl;

import java.util.List;

import com.laptrinh.dao.ICategoryDAO;
import com.laptrinh.mapper.CategoryMapper;
import com.laptrinh.mapper.NewMapper;
import com.laptrinh.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM category";
		return query(sql, new CategoryMapper());
	}

	@Override
	public CategoryModel findOne(Long id) {
		String sql="SELECT * FROM category where id=?";
		List<CategoryModel> categories=query(sql, new CategoryMapper(), id);
		return categories.isEmpty()?null: categories.get(0);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		String sql="SELECT * FROM category where code=?";
		List<CategoryModel> categories=query(sql,new CategoryMapper(),code);
		return categories.isEmpty()?null: categories.get(0);
	}
}

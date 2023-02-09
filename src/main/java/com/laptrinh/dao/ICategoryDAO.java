package com.laptrinh.dao;

import java.util.List;

import com.laptrinh.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {
	List<CategoryModel> findAll();		
	CategoryModel findOne(Long id);
	CategoryModel findOneByCode(String code);
}

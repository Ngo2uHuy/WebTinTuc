package com.laptrinh.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.laptrinh.dao.ICategoryDAO;
import com.laptrinh.model.CategoryModel;
import com.laptrinh.service.ICategoryService;

public class CategoryService implements ICategoryService {

//	private ICategoryDAO categoryDao;
//
//	public CategoryService() {
//		categoryDao = new CategoryDAO();
//	}

	@Inject
	private ICategoryDAO categoryDao;
	@Override
	public List<CategoryModel> findAll() {
		// TODO Auto-generated method stub
		return categoryDao.findAll();
	}

}

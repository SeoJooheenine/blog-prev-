package net.blog.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.blog.www.dao.CategoryDao;
import net.blog.www.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao dao;
	
	@Override
	public List<Category> list() {
		return dao.list();
	}

	@Override
	public void add(Category item) {
		dao.add(item);
	}

}

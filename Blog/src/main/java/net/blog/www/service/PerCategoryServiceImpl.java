package net.blog.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.blog.www.dao.PerCategoryDao;
import net.blog.www.model.PerCategory;

@Service
public class PerCategoryServiceImpl implements PerCategoryService {

	@Autowired
	PerCategoryDao dao;
	
	@Override
	public List<PerCategory> list(String id) {

		return dao.list(id);
	}

}

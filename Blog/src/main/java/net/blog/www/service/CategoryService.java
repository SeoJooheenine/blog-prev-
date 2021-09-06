package net.blog.www.service;

import java.util.List;

import net.blog.www.model.Category;

public interface CategoryService {

	List<Category> list();

	void add(Category item);

}

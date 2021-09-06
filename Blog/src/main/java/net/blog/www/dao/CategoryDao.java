package net.blog.www.dao;

import java.util.List;

import net.blog.www.model.Category;

public interface CategoryDao {

	List<Category> list();

	void add(Category item);

}

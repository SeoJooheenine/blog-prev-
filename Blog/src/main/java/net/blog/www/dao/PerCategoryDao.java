package net.blog.www.dao;

import java.util.List;

import net.blog.www.model.PerCategory;

public interface PerCategoryDao {

	List<PerCategory> list(String id);

}

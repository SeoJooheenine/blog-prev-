package net.blog.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.blog.www.model.PerCategory;

@Repository
public class PerCategoryDaoImpl implements PerCategoryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<PerCategory> list(String id) {
		return sql.selectList("perCategory.pCateList", id);
	}

}

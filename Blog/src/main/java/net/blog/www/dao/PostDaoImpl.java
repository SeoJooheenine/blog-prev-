package net.blog.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.blog.www.model.Post;

@Repository
public class PostDaoImpl implements PostDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Post item) {
		sql.insert("post.add",item);
	}

	@Override
	public List<Post> list(String id) {
		return sql.selectList("post.list", id);
	}

}

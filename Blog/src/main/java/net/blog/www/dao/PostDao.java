package net.blog.www.dao;

import java.util.List;

import net.blog.www.model.Post;

public interface PostDao {

	void add(Post item);

	List<Post> list(String id);

}

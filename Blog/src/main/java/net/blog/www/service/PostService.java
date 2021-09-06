package net.blog.www.service;

import java.util.List;

import net.blog.www.model.Post;

public interface PostService {

	void add(Post item);

	List<Post> list(String id);

}

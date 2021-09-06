package net.blog.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.blog.www.dao.PostDao;
import net.blog.www.model.Post;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDao dao;
	
	@Override
	public void add(Post item) {
		dao.add(item);
	}

	@Override
	public List<Post> list(String id) {
		return dao.list(id);
	}

}

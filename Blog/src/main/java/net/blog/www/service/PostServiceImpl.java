package net.blog.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Override
	public List<Post> utdList(){
		return dao.utdList();
	}
	
	@Override
	@Transactional
	public Post item(int pid) {
//		여기에 뭐가 있어야 할까 트랜잭션줘야해
//		viewcount쿼리로 전송
		dao.viewcount(pid);
		
		
//		showDetail쿼리에 업데이트 필요하겠네
//		리턴해서 showDetail로 업데이트 해줘야겠지
		return dao.item(pid);
	}

}

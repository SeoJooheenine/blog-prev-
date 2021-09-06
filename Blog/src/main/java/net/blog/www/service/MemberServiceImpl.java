package net.blog.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.blog.www.dao.MemberDao;
import net.blog.www.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public boolean checkId(String id) {
		if(dao.checkId(id)>1) 
			return false;
		else 
			return true;
		
	}

	@Override
	public void add(Member item) {
		dao.add(item);
	}

	@Override
	public Member item(String id) {
		return dao.item(id);
	}

}

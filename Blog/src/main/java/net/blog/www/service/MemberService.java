package net.blog.www.service;

import net.blog.www.model.Member;

public interface MemberService {

	boolean checkId(String id);

	void add(Member item);

	Member item(String id);

}

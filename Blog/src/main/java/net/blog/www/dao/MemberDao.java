package net.blog.www.dao;

import net.blog.www.model.Member;

public interface MemberDao {

	int checkId(String id);

	void add(Member item);

	Member item(String id);

}

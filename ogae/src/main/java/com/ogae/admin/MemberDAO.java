package com.ogae.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMember(MemberVO vo) {
		return sqlSessionTemplate.insert("Member.insertMember", vo);
	}
	
	public List<MemberVO> getMemberList(MemberVO vo) {
		return sqlSessionTemplate.selectList("Member.getMemberList", vo);
	}
	
	public int deleteMember(MemberVO vo) {
		return sqlSessionTemplate.delete("Member.deleteMember", vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		return sqlSessionTemplate.selectOne("Member.getMember", vo);
	}
	
	public int updateMember(MemberVO vo) {
		return sqlSessionTemplate.update("Member.updateMember", vo);
	}
}

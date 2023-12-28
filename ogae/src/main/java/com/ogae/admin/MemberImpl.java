package com.ogae.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public int insertMember(MemberVO vo) {
		return memberDAO.insertMember(vo);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		return memberDAO.getMemberList(vo);
	}

	@Override
	public int deleteMember(MemberVO vo) {
		return memberDAO.deleteMember(vo);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

}

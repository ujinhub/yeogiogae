package com.ogae.admin;

import java.util.List;

public interface MemberService {
	int insertMember(MemberVO vo);
	List<MemberVO> getMemberList(MemberVO vo);
	int deleteMember(MemberVO vo);
	MemberVO getMember(MemberVO vo);
}

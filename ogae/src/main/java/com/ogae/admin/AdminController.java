package com.ogae.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ogae.util.Define;
import com.ogae.util.ResponseDTO;

@Controller
public class AdminController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	/**
	 * 관리자 메인 화면
	 * @param request
	 * @return
	 */
	@GetMapping("main.mdo")
	public String mainView(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		if(session.getAttribute("user") == null) {
			return "login";
		}
		
		return "main";
	}
	
	/**
	 * 로그인 화면
	 * @return
	 */
	@GetMapping("login.mdo")
	public String loginView() {
		return "login";
	}
	
	/**
	 * 로그인 프로세스
	 * @param vo		로그인 정보 (아이디, 비밀번호)
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "loginProc.mdo")
	public ResponseDTO<MemberVO> loginProc(MemberVO vo, HttpServletRequest request) {

		HttpSession session = request.getSession();
		MemberVO member = memberService.getMember(vo);
		
		Integer statusCode = HttpStatus.OK.value();
		int code;
		String resultCode;
		String message;

		if(member != null) {
			if(passwordEncoder.matches(vo.getMember_password(), member.getMember_password())) {
				session.setAttribute("user", member);
				code = Define.CODE_SUCESS;
				resultCode = Define.RESULT_CODE_SUEESS;
				message = "사용자 확인 성공";
			} else {
				code = Define.CODE_FAIL;
				resultCode = Define.RESULT_CODE_FAIL;
				message =  "비밀번호가 일치하지 않습니다.";
			}
		} else {
			code = Define.CODE_FAIL;
			resultCode = Define.RESULT_CODE_FAIL;
			message = "아이디가 존재하지 않습니다.";
		}
		
		return new ResponseDTO<MemberVO>(statusCode, code, resultCode, message, member);
	}
	
	/**
	 * 로그아웃 프로세스
	 * @param request
	 * @return
	 */
	@RequestMapping("logoutProc.mdo")
	public String logoutProc(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		
		if(session.getAttribute("user") != null) {
			session.invalidate();
		}
		
		return "login";
	}
	
	/**
	 * 관리자 목록 검색 조회
	 * @param vo
	 * @return
	 */
	@ResponseBody
	@PostMapping("getSearchMemberList.mdo")
	public ResponseDTO<List<MemberVO>> getSearchMemberList(MemberVO vo) {
		Integer statusCode = HttpStatus.OK.value();
		int code = Define.CODE_FAIL;
		String resultCode = Define.RESULT_CODE_FAIL;
		String message = "관리자 목록 조회 실패";

		List<MemberVO> memberList = memberService.getMemberList(vo);
		System.out.println(memberList);
		if(memberList != null && memberList.size() != 0
				) {
			code = Define.CODE_SUCESS;
			resultCode = Define.RESULT_CODE_SUEESS;
			message = "관리자 목록 조회 성공";
			
			for(int i = 0; i < memberList.size(); i++) {
				String tempStr = memberList.get(i).getMember_tel();
				if(tempStr.length() == 11) {
					memberList.get(i).setMember_tel(tempStr.replaceAll("(\\d{3})(\\d{3,4})(\\d{4})", "$1-$2-$3"));
				}
			}
		}
		
		return new ResponseDTO<List<MemberVO>>(statusCode, code, resultCode, message, memberList);
	}
	
	/**
	 * 관리자 목록 가져오기
	 * @param vo
	 * @param model
	 * @return
	 */
	@PostMapping("getMemberList.mdo")
	public String getMemberList(MemberVO vo, Model model) {
		
		List<MemberVO> memberList = memberService.getMemberList(vo);
		for(int i = 0; i < memberList.size(); i++) {
			String tempStr = memberList.get(i).getMember_tel();
			if(tempStr.length() == 11) {
				memberList.get(i).setMember_tel(tempStr.replaceAll("(\\d{3})(\\d{3,4})(\\d{4})", "$1-$2-$3"));
			}
		}
		model.addAttribute("memberList", memberList);
		return "/member/getMemberList";
	}
	
	/**
	 * 관리자 추가 화면
	 * @return
	 */
	@PostMapping("insertMember.mdo")
	public String insertMemberView() {
		return "/member/insertMember";
	}
	
	/**
	 * 관리자 추가 프로세스
	 * @param vo
	 * @return
	 */
	@PostMapping("insertMemberProc.mdo")
	public String insertMemberProc(MemberVO vo) {
		vo.setMember_password(passwordEncoder.encode(vo.getMember_password()));
		memberService.insertMember(vo);
		return "/member/getMemberList";
	}
	
	/**
	 * 관리자 삭제 프로세스
	 * @param vo
	 * @return
	 */
	@RequestMapping("deleteMemberProc.mdo")
	public String deleteMemberProc(MemberVO vo) {
		memberService.deleteMember(vo);
		return "/member/getMemberList";
	}
	
	@RequestMapping("getMember.mdo")
	public String getMember(String id, Model model) {
		MemberVO vo = new MemberVO();
		vo.setMember_id(id);
		
		model.addAttribute("member", memberService.getMember(vo));
		
		return "/member/updateMember";
	}
	
	@PostMapping("exam.mdo")
	public String exam() {
		return "/statistics/exam";
	}
	
}

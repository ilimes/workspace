package service;

import dto.MemberDTO;

public interface MemberService {
	
	//회원가입
	int insertMember(MemberDTO memberDTO);
	
	//로그인
	MemberDTO login(MemberDTO memberDTO);
	
}

















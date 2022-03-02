package service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDTO;
import sqlmap.SqlSessionManager;

//db 기능을 실제로 구현하는 클래스
public class MemberServiceImpl implements MemberService{
	//쿼리 실행하는 객체
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	@Override
	public int insertMember(MemberDTO memberDTO) {
		int result = sqlSession.insert("memberMapper.insertMember", memberDTO);
		sqlSession.commit();
		return result;
	}

	@Override
	public MemberDTO login(MemberDTO memberDTO) {
		MemberDTO result = sqlSession.selectOne("memberMapper.login", memberDTO);
		sqlSession.commit();
		return result;
	}
	
}









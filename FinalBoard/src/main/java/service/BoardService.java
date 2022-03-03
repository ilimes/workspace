package service;

import java.util.List;

import dto.BoardDTO;
import dto.MemberDTO;

public interface BoardService {
	
	//게시글 목록 조회
	List<BoardDTO> selectBoardList(BoardDTO boardDTO);
	
	//글 등록
	void insertBoard(BoardDTO boardDTO);
	
	//게시글 총 몇개인지 카운트
	int selectBoardCount();
	
	void updateReadCnt(int boardNum);
	
	BoardDTO selectBoardDetail(BoardDTO boardDTO);
	
	void deleteBoard(int boardNum);
	
	List<BoardDTO> searchBoard(String title);
	
}

















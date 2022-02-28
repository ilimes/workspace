package service;

import java.util.List;

import dto.BoardDTO;

public interface BoardService {
	
	//게시글 목록 조회
	List<BoardDTO> selectBoardList();
	
	//글 등록
	void insertBoard(BoardDTO boardDTO);
	
	//게시글 총 몇개인지 카운트
	int selectBoardCount();
	
}

















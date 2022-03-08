package service;

import java.util.List;

import dto.BoardDTO;
import dto.MemberDTO;
import dto.ReplyDTO;

public interface BoardService {
	
	//게시글 목록 조회
	List<BoardDTO> selectBoardList(BoardDTO boardDTO);
	
	//글 등록
	void insertBoard(BoardDTO boardDTO);
	
	//게시글 개수 조회
	int selectBoardListCnt(BoardDTO boardDTO);
	
	//조회수 증가
	void updateReadCnt(int boardNum);
	
	//게시글 상세정보
	BoardDTO selectBoardDetail(BoardDTO boardDTO);
	
	//게시글 삭제
	void deleteBoard(int boardNum);
	
	//검색 기능
	List<BoardDTO> searchBoard(String title);
	
	//댓글 등록
	void insertReply(ReplyDTO replyDTO);
	
	//댓글 조회
	List<ReplyDTO> selectReplyList(int boardNum);
	
	//댓글 삭제
	void deleteReply(int replyNum);
	
}

















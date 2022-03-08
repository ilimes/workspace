package controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import dto.BoardDTO;
import dto.MemberDTO;
import dto.ReplyDTO;
import dto.PageDTO;
import oracle.net.aso.m;
import oracle.security.o3logon.b;
import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("*.bo")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardServiceImpl boardService = new BoardServiceImpl();
	
    public BoardController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 처리(인코딩)
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		System.out.println("command = " + command);

		//이동할 페이지
		String path = "view/template.jsp";
		String contentPage = "";
		boolean isRedirect = false;
		
		//게시글 목록 페이지로 이동
		if(command.equals("/boardList.bo")) {
			//현재 페이지 데이터
			int nowPage = 1;
			String nowPageStr = request.getParameter("nowPage");
			if(nowPageStr != null) {
				nowPage = Integer.parseInt(nowPageStr);
			}
			
			String searchKeyword = request.getParameter("searchKeyword");
			String searchValue = request.getParameter("searchValue");
			
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setSearchKeyword(searchKeyword);
			boardDTO.setSearchValue(searchValue);
			
			//전체 데이터 수
			int totalCnt = boardService.selectBoardListCnt(boardDTO);
			
			boardDTO.setTotalCnt(totalCnt);
			boardDTO.setNowPage(nowPage);
			boardDTO.setPageInfo();

			
			
			List<BoardDTO> list = boardService.selectBoardList(boardDTO);
			
			request.setAttribute("count", totalCnt);
			request.setAttribute("list", list);
			request.setAttribute("pageInfo", boardDTO);
			
			contentPage = "board_list";
		}
		else if(command.equals("/regBoardForm.bo")) {
			request.setAttribute("nowDate", getNowDateToString());
			contentPage = "reg_board_form";
		}
		else if(command.equals("/regBoard.bo")) {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String writer = request.getParameter("writer");
			
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setTitle(title);
			boardDTO.setContent(content);
			boardDTO.setWriter(writer);
			
			boardService.insertBoard(boardDTO);
			
			isRedirect = true;
			path = "boardList.bo";
		}
		else if(command.equals("/boardDetail.bo")) {
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setBoardNum(boardNum);
			
			boardService.updateReadCnt(boardNum);
			BoardDTO result = boardService.selectBoardDetail(boardDTO);
			List<ReplyDTO> replyList = boardService.selectReplyList(boardNum);

			request.setAttribute("board", result);
			request.setAttribute("replyList", replyList);
			
			contentPage = "board_detail";			
		}
		else if(command.equals("/deleteBoard.bo")) {
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			
			boardService.deleteBoard(boardNum);
			
			path = "javascript/delete_result.jsp";			
		}
		else if(command.equals("/updateBoardForm.bo")) {
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setBoardNum(boardNum);
			
			BoardDTO result = boardService.selectBoardDetail(boardDTO);
			
			request.setAttribute("board", result);
			
			contentPage = "modify_board";
		}
		//검색기능
		else if(command.equals("/search.bo")) {
			String title = request.getParameter("title");
			
			List<BoardDTO> searchList = boardService.searchBoard(title);
			
			request.setAttribute("list", searchList);
			
			contentPage = "board_list";
		}
		//댓글 등록
		else if(command.equals("/regReply.bo")) {
			String content = request.getParameter("content");
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			HttpSession session = request.getSession();
			String memId = ((MemberDTO)session.getAttribute("loginInfo")).getMemId();
			
			ReplyDTO replyDTO = new ReplyDTO();
			replyDTO.setContent(content);
			replyDTO.setBoardNum(boardNum);
			replyDTO.setWriter(memId);
			
			boardService.insertReply(replyDTO);
			
			
			isRedirect = true;
			path = "boardDetail.bo?boardNum=" + boardNum;
		}
		//댓글 삭제
		else if(command.equals("/deleteReply.bo")) {
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			int replyNum = Integer.parseInt(request.getParameter("replyNum"));
			boardService.deleteReply(replyNum);
			
			isRedirect = true;
			path = "boardDetail.bo?boardNum=" + boardNum;
		}
		
		request.setAttribute("contentPage", contentPage);
		
		//페이지 이동
		if(isRedirect) {
			response.sendRedirect(path);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}
		
	}
	
	//오늘 날짜를 문자열 형태로 리턴하는 메소드
	public String getNowDateToString() {
		Calendar cal = Calendar.getInstance();
		
		//현재 년도 가져오기
		int year = cal.get(Calendar.YEAR);
		//현재 월 가져오기 + 1 -> 내부적으로 배열로 되어있기 때문에
		int month = cal.get(Calendar.MONTH) + 1;
		//현재 일 가져오기
		int date = cal.get(Calendar.DATE);
		
		//출력문으로 확인
		//System.out.println(year + "-" + month + "-" + date);
		
		
		String strMonth = "";
		if(month / 10 == 0) {
			strMonth = "0" + month;
		}
		else {
			strMonth = "" + month;
		}
		//포맷 맞추기 2022-02-21
		String nowDate = year + "-" + strMonth + "-" + date;
		
		return nowDate;
		
	}
	
}














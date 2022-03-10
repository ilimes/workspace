package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dto.MemberDTO;
import service.BoardServiceImpl;
import service.MemberServiceImpl;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberServiceImpl memberService = new MemberServiceImpl();
	
    public MemberController() {
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
		
		//세션 선언
		HttpSession session = request.getSession();

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		System.out.println("command = " + command);

		//이동할 페이지
		String path = "view/template.jsp";
		String contentPage = "";
		boolean isRedirect = false;
		
		//회원가입 페이지로 이동
		if(command.equals("/join.me")) {
			contentPage = "join";
		}
		//회원가입 진행
		else if(command.equals("/joinMember.me")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemId(id);
			memberDTO.setMemPw(pw);
			memberDTO.setMemName(name);
			memberDTO.setMemAge(age);
			memberDTO.setGender(gender);
			
			memberService.insertMember(memberDTO);
			
			path = "view/join_result.jsp";
		}
		//로그인 페이지로 이동
		else if(command.equals("/login.me")) {
			contentPage = "login";
		}
		//로그인 기능
		else if(command.equals("/loginMember.me")) {
			String memId = request.getParameter("id");
			String memPw = request.getParameter("pw");
			
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemId(memId);
			memberDTO.setMemPw(memPw);
			
			MemberDTO result = memberService.login(memberDTO);
			
			//로그인이 실패하면 result에는 null이 들어가 있어요.
			//로그인 성공하면 로그인 회원의 아이디와 이름 정보가 있다.
			
			//!= null은 로그인 성공했다는 뜻
			if(result != null) {
				//로그인 성공한 회원의 id와 이름 정보를 session에 넣는다.
				session.setAttribute("loginInfo", result);
				
			}
			
			request.setAttribute("result", result);
			
			path = "view/login_result.jsp";
		}
		//로그아웃
		else if(command.equals("/logout.me")) {
			//세션 지우기
			session.removeAttribute("loginInfo");
			
			isRedirect = true;
			path = "boardList.bo";
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














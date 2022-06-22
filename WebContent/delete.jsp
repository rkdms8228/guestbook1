<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 가져오기
	int deleteNo = Integer.parseInt(request.getParameter("delete_no"));
	String deletePw = request.getParameter("delete_password");


	GuestbookDao guestDao = new GuestbookDao();
	GuestbookVo guest = guestDao.getDeleteGuest(deleteNo);
	
	if(guest.getPassword().equals(deletePw)) {
		
		//입력한 비밀번호가 같으면 삭제
		guestDao.guestDelete(deleteNo);
		response.sendRedirect("./addList.jsp");
		
	} else { //틀리면 그냥 메인으로 돌아가기
		response.sendRedirect("./addList.jsp");
	}
%>

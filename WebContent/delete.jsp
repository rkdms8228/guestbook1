<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 가져오기
	int guestbookNo = Integer.parseInt(request.getParameter("guestbookNo"));

	//PhoneDao 객체 만들기
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//PhoneDao의 personDelete()를 이용해서 삭제하기
	guestbookDao.guestDelete(guestbookNo);
	int count = guestbookDao.guestDelete(guestbookNo);
	System.out.println(count);
	
	response.sendRedirect("./addList.jsp");
	
%>

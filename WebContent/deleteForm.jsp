<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int deleteNo = Integer.parseInt(request.getParameter("delete_no"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>방명록 삭제</h2>
	
	<p>삭제를 원하시면 비밀번호를 입력해 주세요.</p>

	<form action="./delete.jsp" method="post">
		<input type="hidden" name="delete_no" value="<%=deleteNo%>">
		비밀번호  <input type="password" name="delete_password" value="">
		<button type="submit">확인</button>
		<br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>

</body>
</html>
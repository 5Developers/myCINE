<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mycine.rboard.RequestBoardDTO"%>
<jsp:useBean id="rDAO" class="mycine.rboard.RequestBoardDAO" />
<jsp:useBean id="rDTO" class="mycine.rboard.RequestBoardDTO" />
<jsp:setProperty property="*" name="rDTO" />
<%
	request.setCharacterEncoding("utf-8");
	String movieName = request.getParameter("searchword");
	String id = (String)session.getAttribute("id");
	boolean result = rDAO.movieCheck(movieName);
	if(result) {
		%>
		<script>
		alert("이미 존재하는 영화입니다.");
		location.href="request.jsp";
		</script>
		<%
	} else {
		int count = rDAO.request(id, movieName);
		if(count > 0) {
			%>
			<script>		
			alert("요청 성공!");
			location.href="requestList.jsp";
			</script>
			<%
		} else {
			%>
			<script>
			alert("요청 실패!");
			location.href="requestList.jsp";
			</script>
			<%
		}
	}
	
%>
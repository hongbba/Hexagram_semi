<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>노가리투어 - 회원탈퇴</TITLE>
<jsp:include page="/resource/template/header_head.jsp"></jsp:include>
</HEAD>
<BODY>
<jsp:include page="/resource/template/header_body.jsp"></jsp:include>
<SECTION>
<% String root = request.getContextPath(); %>
<% String sessionId = (String)session.getAttribute("usersId"); %>
<!-- 페이지 내용 시작 -->

<form action="<%=root %>/users/unregister.nogari" method="post">
	<table width="500">
		<tbody>
			<tr>
				<th>내 아이디</th>
				<td><%=sessionId %></td>
			</tr>
				<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" name="usersPw" required>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="~_~탈퇴">
				</td>
			</tr>
		</tbody>
	</table>	
</form>

<!-- 회원 탈퇴 실패시 fail파라미터 확인하고 메세지 보여주기-->
<%if(request.getParameter("fail") != null) {%>
	<h5>
		<font color="red">회원탈퇴에 실패하였습니다. 비밀번호를 다시 확인해 주세요</font>
	</h5>
<%} %>

<!-- 페이지 내용 끝. -->
</SECTION>
<jsp:include page="/resource/template/footer.jsp"></jsp:include>
<SCRIPT TYPE="TEXT/JAVASCRIPT" SRC="<%=root%>/resource/js/footer.js"></SCRIPT>
</BODY>
</HTML>
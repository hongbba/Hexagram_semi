<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="메인" />
</jsp:include>
    
 <% 
 String usersId = (String)request.getSession().getAttribute("usersId");
 String usersGrade = (String)request.getSession().getAttribute("usersGrade");
 String root = request.getContextPath();
 //관리자 권한으로 게시글 생성.=> 일반회원 X
		 

 %>

 <h3>게시글 수정(관리자 페이지)</h3>
 
 <form action="edit.nogari" method="post">
	<table border="1" width="500">
		<tbody>
			<tr>
				<td>작성자</td>
				<td>
				<input type="hidden" name="usersIdx" value="<%=usersId %>" required>
				<%=usersId %>
				</td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<select name="itemType">
						<option>관광지</option>
						<option>축제</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>관광지명</td>
				<td>
				<input type="text" name="itemName" placeholder="관광지명 입력" required>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
				<textarea name="itemAddress" rows="1" cols="50" placeholder="입력하세요"></textarea>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
				<textarea name="itemDetail" rows="20" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<td>태그</td>
				<td><input type="text" name="itemTag" placeholder="태그 입력"></td>
			</tr>
			<tr>
				<td>기간</td>
				<td><input type="text" name="itemPperiods" placeholder="기간 입력"></td>
			</tr>
			<tr>
				<td>운영시간</td>
				<td><input type="text" name="itemTime" placeholder="운영시간 입력"></td>
			</tr>
			<tr>
				<td>홈페이지</td>
				<td><input type="url" name="itemHomepage" placeholder="홈페이지 입력"></td>
			</tr>
			<tr>
				<td>주차</td>
				<td><input type="text" name="itemParking" placeholder="주차가능여부 입력"></td>
			</tr>
		</tbody>
		<tfoot>
			<tr align="center">
				<td colspan="3">
				<input type="submit" value="등록">
				</td>
			</tr>
		</tfoot>
	</table>
</form>

 
 <jsp:include page="/template/footer.jsp"></jsp:include>
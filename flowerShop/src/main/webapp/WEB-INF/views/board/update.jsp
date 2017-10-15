<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/header.jsp" %>
<jsp:include page="${pageContext.request.contextPath }/top" />
<script type="text/javascript">
function chk(){
	f = document.form1;
	if(!f.board_title.value || f.board_title.value.trim().length == 0) {
		alert('제목넣어!!!');
		f.board_title.value = "";
		f.board_title.focus();
		return false;
	}
	if(!f.board_content.value || f.board_content.value.trim().length == 0) {
		alert('내용넣어!!!');
		f.board_content.value = "";
		f.board_content.focus();
		return false;
	}
	return true;
}
</script>
<div class="product-big-title-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-bit-title text-center">
					<h2>자유 게시판</h2>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row m-n">
	<div class="col-md-4 col-md-offset-4 m-t-lg">
		<form method="post" name="form1" action="updateOK?pageNo=${pageNo}&board_no=${vo.board_no}">
			<table width="100%" border="1" align="center">
				<tr>
				    <td>
						<input type="text" name="board_title" size="100" value="${vo.board_title}"/> 
				    </td>
				</tr>
				<tr>
				    <td>
						 <textarea rows="10" cols="100" name="board_content" >${vo.board_content}</textarea>
				    </td>
				</tr>
				<tr>
				    <td align="right">
						<input type="submit" value="저장하기">
						<input style="width: 110px; height: 45px;" type="button" value="돌아가기" onclick="location.href='content_view?pageNo=${pageNo}&board_no=${vo.board_no}'"/>
				    </td>
				</tr>
			</table>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/include/footer.jsp" %>
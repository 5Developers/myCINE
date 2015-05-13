<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mycine.member.*"%>
<jsp:useBean id="mDTO" class="mycine.member.MemberDTO" />
<jsp:setProperty property="*" name="mDTO" />
<jsp:useBean id="mDAO" class="mycine.member.MemberDAO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script>
function begin(){
	document.myForm.pwd.focus();
}
function checkIt(){
	if(!document.myForm.pwd.value){
		alert("비밀번호를 입력하지 않았습니다.");
		document.myForm.pwd.focus();
		return false;
	}
}
function cancel() {
	self.close();
}
</script>
</head>
<body onload="begin()">
	<form name="myForm" action="delete_ok.jsp" method="post"
		onsubmit="return checkIt()">
		<table width="260" border="1" align="center">
			<tr>
				<td colspan="2" algin="center"><b>회원 탈퇴</b></td>
			</tr>
			<tr>
				<td width="150"><b>비밀번호입력</b></td>
				<td width="110"><input type="password" name="pwd" size="15"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button class="btn btn-danger" type="submit" >회원탈퇴</button> 
					<button class="btn btn-warning" type="button" onclick="javascript:cancel()">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/myCINE/css/bootstrap.min.css">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="/myCINE/js/bootstrap.min.js"></script>
</head>
<%
	String rememberId = "";
	Cookie cks[] = request.getCookies();
	if (cks != null && cks.length != 0) {
		for (int i = 0; i < cks.length; i++) {
			if (cks[i].getName().equals("rememberId")) {
				rememberId = cks[i].getValue();
			}
		}
	}
%>
<body>
	<div style="border:1px solid #cccccc; padding: 10px; margin: 10px;">
		<legend style="font-size: 30px; font-weight: bold;"> 로그인 </legend>
		<form role="form" action="login_ok.jsp">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<div class="form-group">
						<label for="focusedInput">ID: </label> <input type="text"
							class="form-control" id="focusedInput" name="id"
							value="<%=rememberId%>" placeholder="ID 입력">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name="pwd"
							placeholder="Password 입력">
					</div>
					<span class="checkbox"> <label style="font-size: 15px;"><input
							type="checkbox" name="rememberId" value="on"
							<%=rememberId.equals("") ? "" : "checked"%>> Remember me</label>
					</span>
					<button type="submit" class="btn btn-primary">로그인</button>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</form>
	</div>
</body>
</html>
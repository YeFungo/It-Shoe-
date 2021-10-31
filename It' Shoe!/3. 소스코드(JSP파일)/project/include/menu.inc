<%@ page contentType="text/html;charset=euc-kr"%>
<meta name="viewport" content="width=divice-width", initial-scale="1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="../css/bootstrap.css">
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collase-1"
				aria-expaneded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../main/index.jsp">ItShoe! 이슈가 되다</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<%
		// 로그아웃 상태이면 
		if (ID == null) {
		%>	<li><a href="../login/loginForm.jsp">로그인</a></li>
			<li><a href="../member/joinForm.jsp" data-ajax="false">회원가입</a></li>
			<li><a href="../help/help.jsp" data-ajax="false">도움말</a></li>
<li><a align="right" href="../login/loginForm.jsp" data-role="button" data-theme="d" data-icon="arrow-r" data-inline="true" data-ajax="false">Login</a></li>
		<%
        // 로그인 상태이면
		} else {	
		%>
			<li><a href="../member/memberList.jsp" data-ajax="false">회원 목록</a></li>
			<li><a href="../member/getMyInfo.jsp" data-ajax="false">내 정보</a></li>
			<li><a href="../member/board.jsp" data-ajax="false">게시판</a></li>
			<li><a href="../help/help.jsp" data-ajax="false">도움말</a></li>
<li><a align="right" href="../login/logout.jsp" data-role="button" data-theme="d" data-icon="arrow-r" data-inline="true" data-ajax="false"><%= ID %>님,Logout</a></li>
		<%
		}
		%>
	
		</div>
	<form class="form-inline mt-2 mt-md-0">
   	    <input class="form-control mr-sm-2" type="text" placeholder="검색" aria-label="Search">
     	   <button class="btn btn-outline-success my-2 my-sm-0" type="submit">확인</button>
     	 </form>

	</nav>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>	
 

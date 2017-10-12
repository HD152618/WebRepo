<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/myblog.css" />
<title>My Blog</title>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">HOME</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link" href="#harby">Hobby
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#likes">Favorite
						Food</a></li>
				<li class="nav-item"><a class="nav-link" href="#dream">Dream</a>
				</li>
			</ul>
			

		</div>
		<%
    UserVo user = (UserVo)session.getAttribute("user");
    if(user==null) { 
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/signup2">Sign up</a>
    	<%} else { %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action="/WebClass/bloglogout">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	       	</form><div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	    <%} %>
		<div class="modal" id="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">결과</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

	</nav>
	<h1 id="title">Welcome to my Blog</h1>
	<a id="harby">취미</a>
	<br>
	<img src="../image/jazz_bass-wallpaper-1920x1080.jpg" width="600"
		height="400" title="베이스" alt="이미지1">
	<img src="../image/violin_3-wallpaper-3840x2400.jpg" width="600"
		height="400" title="바이올린" alt="이미지2">
	<a id="up1" href="#">위로</a>
	<br>
	<br>
	<br>
	<a id="likes">좋아하는 음식</a>
	<br>
	<img src="../image/steak.jpg" width="600" height="400" title="스테이크" alt="이미지3">
	<img src="../image/pasta.jpg" width="600" height="400" title="파스타"  alt="이미지4">
	<a id="up2" href="#">위로</a>
	<br>
	<a id="dream">꿈</a>
	<br>
	<img src="../image/coding.png" width="700" height="400" title="코딩"  alt="이미지5">
	<a id="up3" href="#">위로</a>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="../js/myblog.js"></script>
</body>

</html>
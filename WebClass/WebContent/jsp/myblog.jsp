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
			<div id="login">
				<form class="form-inline my-2 my-lg-0" id="loginForm">
					<input id="id" class="form-control mr-sm-2" type="text"
						placeholder="ID" aria-label="ID" required> <input id="pwd"
						class="form-control mr-sm-2" type="password" placeholder="PW"
						aria-label="PW" required>
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">LOGIN</button>
				</form>
			</div>

		</div>
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


		<div class="container">
			<div class="row">
				<div class="col">
					<form class="form-inline my-2 my-lg-0" id="registerForm">




						<div class="form-group">
							<input type="text" class="form-control" id="number"
								placeholder="번호" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="name"
								placeholder="이름" required>
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<div>
										<input type="radio" name="grade" id="grade1" required>
										<p>1학년</p>
									</div>
									<div>
										<input type="radio" name="grade" id="grade2" required>
										<p>2학년</p>
									</div>
									<div>
										<input type="radio" name="grade" id="grade3" required>
										<p>3학년</p>
									</div>
									<br>
								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<select name="list" >
										<option value="class1">1반</option>
										<option value="class2">2반</option>
										<option value="class3">3반</option>
										<option value="class4">4반</option>
										<option value="class5">5반</option>
										<option value="class6">6반</option>
									</select>
								</div>
							</div>
						</div>
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Register</button>
					</form>
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
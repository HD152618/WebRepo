/**
 * 
 */
function menu_over(e) {
	e.setAttribute("class", "nav-item active");
}

function menu_out(e) {
	e.setAttribute("class", "nav-item");
}
// $(document).ready(function () {
// $('#loginForm').submit(function (event) {
// // 자동 서밋 막기
// event.preventDefault();
// var id = $('#id').val();
// var pwd = $('#pwd').val();
// console.log(id, pwd);
// });
// });

// 간단하게 쓰기
$(function() {
	$('#loginForm').submit(function(event) {
		// 자동 서밋 막기
		event.preventDefault();
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		console.log(id, pwd);
		$.post("http://httpbin.org/post", {
			"id" : id,
			"pwd" : pwd
		}, function(data) {
			console.log(data.form.id);
			// alert(data.form.id + "로그인 됨");
			// document.getElementById('login').innerHTML = data.form.id + " 로그인
			// 됨";
			var myModal = $('#myModal');
			myModal.modal();
			myModal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.");

		});
	});
});
$(function() {
	$('#registerForm').submit(function(event) {
		// 자동 서밋 막기
		event.preventDefault();
		var name = $('#name').val();
		var num = $('#number').val();
		console.log(name, num);
		$.post("http://httpbin.org/post", {
			"name" : name,
			"number" : num
		}, function(data) {
			console.log(data.form.name);
			// alert(data.form.id + "로그인 됨");
			// document.getElementById('login').innerHTML = data.form.id + " 로그인
			// 됨";
			var myModal = $('#myModal');
			myModal.modal();
			myModal.find('.modal-body').text(data.form.name + "님 회원가입되었습니다.");

		});
	});
});
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
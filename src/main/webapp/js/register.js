$().ready(function() {
	$("#Menu").validate({
		onfocusout: true,
		onkeyup: true,
		onclick: true,
		rules: {
			"username": {
				required: true,
				maxlength: 30,
				minlength: 8
			},
			"email": {
				email: true,
				required: true,
				minlength: 8
			},
			"password": {
				required: true,
				minlength: 8
			},
			"repassword": {
				equalTo: "#password",
				minlength: 8
			}
		},
		messages: {
			"username": {
				required: "Bắt buộc nhập username",
				maxlength: "Hãy nhập tối đa 30 ký tự",
				minlength: "Hãy nhập trên 8 kí tự"
			},
			"email": {
				required: "Bắt buộc nhập email",
				maxlength: "Hãy nhập tối đa 15 ký tự",
				email: "email chưa đúng định dạng",
			},
			"password": {
				required: "Bắt buộc nhập password",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"repassword": {
				equalTo: "Hai password phải giống nhau",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			}
		},
		submitHandler: function(form) {
    	form.submit();
  }
	});
});


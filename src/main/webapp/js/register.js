function validateform() {
	var username = document.forms["Menu"]["username"].value;
	var email = document.forms["Menu"]["email"].value;
	var password = document.forms["Menu"]["password"].value;
	var repassword = document.forms["Menu"]["repassword"].value;
	var err = document.getElementById("err");
	var mess = "";
	//Kiểm tra thông tin
	if (username == "" || email == "" || password == "" || repassword == "") {
		mess = "Vui long nhap day du thong tin";
		err.innerHTML = mess;
		return false;
	}
}

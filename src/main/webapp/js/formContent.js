function check()
{
    var title = document.getElementById("title").value;
    var brief = document.getElementById("brief").value;
    var content = document.getElementById("content").value;

    if (title == "" || brief == "" || content == "") {
        alert("Vui long nhap du thong tin");
        return;
    }

}
function resetButton(){
    document.getElementById("form").reset();
}
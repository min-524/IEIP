function addCheck(){
	if(frm.name.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		frm.name.focus();
		return false;
	} else if(frm.phone.value.length == 0){
		alert("회원전화가 입력되지 않았습니다.");
		frm.phone.focus();
		return false;
	} else if(frm.address.value.length == 0){
		alert("회원주소가 입력되지 않았습니다.");
		frm.address.focus();
		return false;
	} else if(frm.day.value.length == 0){
		alert("가입일자가 입력되지 않았습니다.");
		frm.day.focus();
		return false;
	} else if(frm.grade.value.length == 0){
		alert("고객등급이 입력되지 않았습니다.");
		frm.grade.focus();
		return false;
	} else if(frm.code.value.length == 0){
		alert("도시가 입력되지 않았습니다.");
		frm.code.focus();
		return false;
	} else{
		alert("회원등록이 완료 되었습니다!");
		window.location("index.jsp");
		return true;
	}
}

function search(){
	window.location = "list.jsp";
}

function modify(){
	alert("수정이 완료되었습니다.");
	document.frm.submit;
	return true;
}






function addCheck(){
	if(frm.jumin.value.length == 0 ){
		alert("주민번호가 입력되지 않았습니다!");
		frm.jumin.focus();
		return false;
	} else if(frm.name.value.length == 0 ){
		alert("성명이 입력되지 않았습니다!");
		frm.name.focus();
		return false;
	} else if(frm.number.value == 0 ){
		alert("투표번호가 입력되지 않았습니다!");
		frm.number.focus();
		return false;
	} else if(frm.time.value.length == 0 ){
		alert("투표시간이 입력되지 않았습니다!");
		frm.time.focus();
		return false;
	} else if(frm.place.value.length == 0 ){
		alert("투표장소이 입력되지 않았습니다!");
		frm.place.focus();
		return false;
	} else if(frm.check.checked == 0){
		alert("유권자확인이 입력되지 않았습니다!");
		frm.check.focus();
		return false;
	} else
	alert("투표하기 정보가 정상적으로 등록 되었습니다!");
	window.location("index.jsp");
	return true;
}

function reset(){
	frm.reset();
}
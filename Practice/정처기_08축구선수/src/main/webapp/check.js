function addCheck(){
	if(frm.p_id.value.length == 0){
		alert("선수ID가 입력되지 않았습니다");
		frm.p_id.focus();
		return false;
	} else if(frm.name.value.length == 0){
		alert("선수이름이 입력되지 않았습니다");
		frm.name.focus();
		return false;
	} else if(frm.position.value.length == 0){
		alert("포지션이 입력되지 않았습니다");
		frm.position.focus();
		return false;
	} else if(frm.date.value.length == 0){
		alert("선수등록일이 입력되지 않았습니다");
		frm.date.focus();
		return false;
	} else{
		alert("선수등록이 정상적으로 완료되었습니다");
		document.frm.submit();
		return true;
	}
}


function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}

function checkAdd(){
	if(frm.id.value.length == 0){
		alert("선수ID가 입력되지 않았습니다");
		frm.id.focus();
		return false;
	} else if(frm.name.value.length == 0){
		alert("선수이름이 입력되지 않았습니다");
		frm.name.focus();
		return false;
	} else if(frm.position.value.length == 0){
		alert("포지션이 입력되지 않았습니다");
		frm.position.focus();
		return false;
	} else if(frm.date.value.length == 0){
		alert("선수등록일이 입력되지 않았습니다");
		frm.date.focus();
		return false;
	} else{
		alert("선수수정이 정상적으로 완료되었습니다");
		document.frm.submit();
		return true;
	}
}
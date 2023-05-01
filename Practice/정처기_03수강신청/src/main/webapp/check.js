function addCheck(){
	if(frm.c_code.value.length == 0){
		alert("과목코드가 입력되지 않았습니다");
		frm.c_code.focus();
		return false;
	} else if(frm.c_name.value.length == 0){
		alert("과목명이 입력되지 않았습니다.");
		frm.c_name.focus();
		return false;
	} else if(frm.score.value.length == 0){
		alert("학점이 입력되지 않았습니다.");
		frm.score.focus();
		return false;
	} else if(frm.teacher.value.length == 0){
		alert("담당강사가 입력되지 않았습니다.");
		frm.teacher.focus();
		return false;
	} else if(frm.code.value.length == 0){
		alert("요일이 입력되지 않았습니다.");
		frm.code.focus();
		return false;
	} else if(frm.start.value.length == 0){
		alert("시간시간이 입력되지 않았습니다.");
		frm.start.focus();
		return false;
	} else if(frm.end.value.length == 0){
		alert("종료시간이 입력되지 않았습니다.");
		frm.end.focus();
		return false;
	} else {
		alert("교과목 추가가 완료되었습니다");
		document.frm.submit();
		return true;
	}
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다");
	document.frm.reset();	
}

function addCheck2(){
	if(frm.c_code.value.length == 0){
		alert("과목코드가 입력되지 않았습니다");
		frm.c_code.focus();
		return false;
	} else if(frm.c_name.value.length == 0){
		alert("과목명이 입력되지 않았습니다.");
		frm.c_name.focus();
		return false;
	} else if(frm.score.value.length == 0){
		alert("학점이 입력되지 않았습니다.");
		frm.score.focus();
		return false;
	} else if(frm.teacher.value.length == 0){
		alert("담당강사가 입력되지 않았습니다.");
		frm.teacher.focus();
		return false;
	} else if(frm.code.value.length == 0){
		alert("요일이 입력되지 않았습니다.");
		frm.code.focus();
		return false;
	} else if(frm.start.value.length == 0){
		alert("시간시간이 입력되지 않았습니다.");
		frm.start.focus();
		return false;
	} else if(frm.end.value.length == 0){
		alert("종료시간이 입력되지 않았습니다.");
		frm.end.focus();
		return false;
	} else {
		alert("교과목 수정가 완료되었습니다");
		document.frm.submit();
		return true;
	}
}



function addCheck(){
	if(frm.num1.value.length==0){
		alert("예약번호가 입력되지 않았습니다.");
		frm.num1.focus();
		return false;
	} else if(frm.num2.value.length==0){
		alert("사원번호가 입력되지 않았습니다.");
		frm.num2.focus();
		return false;
	} else if(frm.date.value.length==0){
		alert("근무일자가 입력되지 않았습니다.");
		frm.date.focus();
		return false;
	} else if(frm.num3.value.length==0){
		alert("좌석번호가 입력되지 않았습니다.");
		frm.num3.focus();
		return false;
	} else {
		alert("좌석예약정보가 등록 되었습니다!");
		document.frm.submit();
		return true;
	}
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	frm.reset();
}

function checkAdd(){
	if(frm.number.value.length == 0){
		alert("사원번호가 입력되지 않았습니다.");
		frm.number.focus();
		return false;
	} else {
		document.frm.submit();
		return true;
	}
}

function home(){
	window.location = "index.jsp";
}
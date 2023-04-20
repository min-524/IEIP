function addCheck(){
	if(frm.date.value.length == 0){
		alert("수강월이 입력되지 않았습니다");
		frm.date.focus();
		return false;
	} else if(frm.name.value.length == ""){
		alert("회원명이 입력되지 않았습니다.");
		frm.name.focus();
		return false;
	} else if(frm.area[0].checked == false && frm.area[1].checked == false && frm.area[2].checked == false && frm.area[3].checked == false && frm.area[4].checked == false){
		alert("강의장소가 선택되지 않았습니다.");
		frm.area.focus();
		return false;
	} else if(frm.class_name.value.length == ""){
		alert("강의명이 선택되지 않았습니다.");
		frm.class.focus();
		return false;
	} else {
		alert("수강신청이 정상적으로 완료되었습니다!");
		document.frm.submit();
		return true;
	}
}

function res(){
	alert("정보를 지우고 다시 입력합니다!");
	frm.date.focus();
	document.frm.reset();
}


function getValue(name_value){
	document.getElementById("num").value = name_value;
	c_no = name_value;
}

function getValue2(class_name_value){
	if(c_no > 20000){
		document.getElementById("tuition").value = class_name_value;
	} else {
		document.getElementById("tuition").value = class_name_value;
	}
}

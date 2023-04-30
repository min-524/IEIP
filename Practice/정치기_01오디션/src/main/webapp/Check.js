function addCheck(){
	if(frm.artist_no.value.length == 0){
		alert("참가번호가 입력되지 않았습니다!");
		frm.artist_no.focus();
		return false; 
	} else if(frm.artist_name.value.length == 0){
		alert("참가자명가 입력되지 않았습니다!");
		frm.artist_name.focus();
		return false; 
	} else if(frm.birth1.value.length == 0 | frm.birth2.value.length == 0 | frm.birth3.value.length == 0){
		alert("생년월일가 입력되지 않았습니다!");
		frm.birth1.focus();
		return false; 
	} else if(frm.gender.value.length == 0){
		alert("성별가 입력되지 않았습니다!");
		frm.gender.focus();
		return false; 
	} else if(frm.telent.value.length == 0){
		alert("특기가 입력되지 않았습니다!");
		frm.telent.focus();
		return false; 
	} else if(frm.agency.value.length == 0){
		alert("소속사가 입력되지 않았습니다!");
		frm.agency.focus();
		return false; 
	} else{
		alert("참가신청이 정상적으로 등록되었습니다!");
		document.frm.submit();
		return true;
	}
}

function res(){
	alert("정보를 지우고 다시 입력합니다!");
	document.frm.reset();
}


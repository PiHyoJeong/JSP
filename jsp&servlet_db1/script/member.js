function loginCheck(){
	if(document.frm.userid.value.length==0){
		alert("enter id");
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.pwd.value.length==0){
		alert("enter pwd");
		frm.pwd.focus();
		return false;
	}
	
	return true;
}


function idCheck(){
	if(document.frm.userid.value.length==0){
		alert("enter id");
		frm.userid.focus();
		return false;
	}	
	let url = "idCheck.do?userid=" + document.frm.userid.value; 
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok() {
   opener.frm.userid.value = document.frm.userid.value;
   opener.frm.reid.value = document.frm.userid.value;
   self.close();
}


function joinCheck(){
	if(document.frm.name.value.length==0){
		alert("enter name");
		frm.name.focus();
		return false;		
	}
	
	if(document.frm.userid.value.length==0){
		alert("enter id");
		frm.userid.focus();
		return false;	
	}
	
	if(document.frm.userid.value.length < 4 ){
		alert("id's length is more than 4");
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.pwd.value.length ==""){
		alert("enter password");
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.pwd.value != document.frm.pwd_check.value){
		alert("not same password and password check");
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.reid.value.length==0){
		alert("please check duplicate id");
		frm.userid.focus();
		return false;
	}
	return true;
}
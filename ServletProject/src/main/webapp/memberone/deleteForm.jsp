<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script type="text/javascript" src="script.js">


function begin(){
	
	document.myForm.pass.focus();
	}
	
	function checkIt(){
	if(!document.myForm.pass.value){
	alert("비밀본호를 입력하지 않았습니다.")
	document.myForm.pass.
	return false;
	}	
	
	







</script>
</head>
<body>
<form action="deleteProc.jsp" method="post" name="myForm" onsubmit="return checkIt()">

<table width="260" border="1" align="center">

<tr>

<td colspan="2" align="center">
<b>회원 탈퇴</b>
</td>






</tr>
<tr>
<td width="150" ><b>비밀번호 입력</b>
</td>

<td width="110">
<input type="password" name="pass" size="15">
</td>
</tr>

<tr>

<td colspan="2" align="center">
<input type="submit" value="회원탈퇴">
<input type="button" value="취소" onclick="javascript:window.location='login.jsp'"> 













</tr>

</table>

</form>
</body>
</html>
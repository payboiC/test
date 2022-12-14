<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src = "script.js"></script>
</head>
<body>
   <!--여기가 DB랑 연동   -->
   <form action = "regProc.jsp" method = "post" name = "regForm">
      <table border = "1">
           <tr>
            <td colspan = "2" align="center">회원가입 정보 입력</td>
          </tr>
      
          <tr>
            <td align="right"> 아이디 </td>
            <td>
               <input type = "text" name = "id">&nbsp;
               <!--버튼을 눌러서 중복확인 중복화인은 자바스크립트로 함수로 구현  -->
               <input type = "button" value = "중복확인" onclick = "idCheck(this.form.id.value)">
            </td>
          </tr>
      
          <tr>
            <td align="right"> 패스워드 </td>
            <td>
               <input type = "password" name = "pass">
            </td>
         </tr>
         <!--비밀번호 중복확인 눌러서 위에 패스워드랑 같아야된다. -->
          <tr>
            <td align="right"> 패스워드 확인 </td>
            <td>
               <input type = "password" name = "repass">
            </td>
         </tr>
         
         <tr>
            <td align="right"> 이름 </td>
            <td>
               <input type = "text" name = "name">
            </td>
         </tr>
         
         <tr>
            <td align="right"> 전화번호 </td>
            <td>
               <select name = "phone1">
                   <option value = "02">02</option>
                   <option value = "010">010</option>
                   <option value = "011">011</option>
                   <option value = "031">031</option>
                   <option value = "032">032</option>
                   <option value = "033">033</option>
               </select>-
               <input type = "text" name = "phone2" size = "5">-
               <input type = "text" name = "phone3" size = "5">
            </td>
         </tr>
         
         <tr>
            <td align="right"> 이메일 </td>
            <td>
               <input type = "text" name = "email">
            </td>
         </tr>
         
         <tr>
            <td align="right"> 우편번호 </td>
            <td>
               <input type = "text" name = "email">
               <input type = "button" value = "찾기" onclick = "zipCheck()"> 
            </td>
         </tr>
         
         <tr>
            <td align= "right"> 주소 </td>
            <td>
               <input type = "text" name = "address1" size = "60">
            </td>
         </tr>
         
         
         <tr>
            <td align= "right"> 상세 주소 </td>
            <td>
               <input type = "text" name = "address2" size = "30">
            </td>
         </tr>
         
         <tr>
            <td colspan = "2" align="center">
            <input type = "button" value = "회원가입" >&nbsp;&nbsp;
            <input type = "reset" value = "다시입력" onclick= "javascript:window.location='regForm.jsp'" >
            </td>
          </tr>
      
      </table>
   </form>   
</body>
</html>         
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
            
       String code = request.getParameter("code");
       String viewPageURI = null;
       
       if(code.equals("A")){
    	   viewPageURI = "viewModule/A.jsp";
       }
       else if(code.equals("B")){
    	   viewPageURI = "viewModule/B.jsp";
       }
       else {
    	   viewPageURI = "viewModule/C.jsp";
       }

%>  

<jsp:forward page="<%=viewPageURI%>"></jsp:forward>  
    
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>-->
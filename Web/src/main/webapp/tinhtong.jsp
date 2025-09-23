<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   if (session.getAttribute("ss")==null)  //Neu chua tao session:ss
	   session.setAttribute("ss", (int)0); //Tao ra session:ss
	String tamn=request.getParameter("txtn");
	if(tamn!=null){
		int s=(int) session.getAttribute("ss");// Gan ss ra bien
		s=s+Integer.parseInt(tamn); //Thay doi bien
		session.setAttribute("ss", s); //Luu bien vao lai session
	   
	}
	response.sendRedirect("tong.jsp");
	out.print("Tong:"+ session.getAttribute("ss"));
	%>

</body>
</html>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String un = request.getParameter("txtun");
String pass = request.getParameter("txtpass");

if(un != null && pass != null){
    if(un.equals("abc") && pass.equals("123")){
        session.setAttribute("un", un);  // lưu vào session
        response.sendRedirect("tc.jsp");
    } else {
        response.sendRedirect("dangnhap.jsp?tb=Đăng nhập sai");
    }
} else {
    response.sendRedirect("dangnhap.jsp?tb=Vui lòng nhập thông tin");
}
%>

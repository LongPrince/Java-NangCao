<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String un = request.getParameter("txtun");
    String pass = request.getParameter("txtpass");

    if (un != null && pass != null) {
        if (un.equals("abc") && pass.equals("123")) {
            session.setAttribute("un", un);
            response.sendRedirect("Web2.jsp");
        } else {
            response.sendRedirect("Web2.jsp?tb=loi");
        }
    } else {
        // Nếu chưa nhập thông tin thì quay lại login
        response.sendRedirect("login.jsp");
    }
%>

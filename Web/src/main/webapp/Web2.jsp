<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String un = (String) session.getAttribute("un");
    String tb = request.getParameter("tb");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Trang Chính</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5" style="max-width: 600px;">
        <% if (un != null) { %>
            <h2>Xin chào, <%= un %>!</h2>
            <a href="logout.jsp" class="btn btn-danger mt-3">Đăng xuất</a>
        <% } else { %>
            <h2>Bạn chưa đăng nhập!</h2>
            <a href="login.jsp" class="btn btn-primary mt-3">Đăng nhập</a>
        <% } %>

        <% if ("loi".equals(tb)) { %>
            <div class="alert alert-danger mt-3" role="alert">
                Sai tên đăng nhập hoặc mật khẩu!
            </div>
        <% } %>
    </div>
</body>
</html>

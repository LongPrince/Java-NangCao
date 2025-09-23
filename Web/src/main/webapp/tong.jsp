<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="tinhtong.jsp" method="post"> 	
 n=<input type = "number" name= "txtn">
 <input type = "submit" value="Tong"> 
</form>
 <% out.print("Tong:" +session.getAttribute("ss"));

 %>
 
 <%
    // Lấy username từ request (dữ liệu POST)
    String username = request.getParameter("username");

    if (username == null || username.isEmpty()) {
        // Nếu không có username, chuyển về login
        response.sendRedirect("login.html");
        return;
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Trang Tổng</title>
</head>
<body>
    <h1>Xin chào, <%= username %>!</h1>
</body>
</body>
</html>
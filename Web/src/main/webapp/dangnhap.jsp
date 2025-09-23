<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <h2>Đăng Nhập</h2>
    <form action="/submit-login" method="post">
        <label for="username">Tên đăng nhập:</label><br />
        <input type="text" id="username" name="username" required /><br /><br />
        
        <label for="password">Mật khẩu:</label><br />
        <input type="password" id="password" name="password" required /><br /><br />
        
        <button type="submit">Đăng nhập</button>
    </form>

    
</body>
</html>

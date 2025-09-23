<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="xuly.jsp" method="post">
    Họ tên: <input type="text" name="hoten"><br>
    Tuổi: <input type="number" name="tuoi"><br>
    Mật khẩu: <input type="password" name="matkhau"><br>
    Giới tính:
    <input type="radio" name="gioitinh" value="Nam"> Nam
    <input type="radio" name="gioitinh" value="Nữ"> Nữ <br>
    Sở thích:
    <input type="checkbox" name="sothich" value="Đọc sách"> Đọc sách
    <input type="checkbox" name="sothich" value="Du lịch"> Du lịch <br>
    Ngày sinh: <input type="date" name="ngaysinh"><br>
    Email: <input type="email" name="email"><br>
    Chọn tệp: <input type="file" name="tep"><br>
    <input type="submit" value="Gửi">
    <input type="reset" value="Làm lại">
</form>

</body>
</html>
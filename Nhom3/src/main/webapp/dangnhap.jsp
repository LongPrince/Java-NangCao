<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <div class="container-fluid">
       <a class="navbar-brand" href="tc.jsp">Công ty sách ABC</a>
       <div class="collapse navbar-collapse">
           <ul class="navbar-nav">
               <li class="nav-item"><a class="nav-link" href="tc.jsp">Trang chủ</a></li>
               <li class="nav-item"><a class="nav-link" href="dangnhap.jsp">Đăng nhập</a></li>
               <li class="nav-item"><a class="nav-link" href="dangxuat.jsp">Đăng xuất</a></li>
           </ul>
       </div>
   </div>
</nav>

<div class="container mt-4">
   <h3>Đăng nhập</h3>
   <form action="ktdangnhap.jsp" method="post" class="w-50">
       <div class="mb-3">
           <label for="username" class="form-label">Tên đăng nhập:</label>
           <input type="text" class="form-control" id="username" name="txtun" required>
       </div>
       <div class="mb-3">
           <label for="password" class="form-label">Mật khẩu:</label>
           <input type="password" class="form-control" id="password" name="txtpass" required>
       </div>
       <button type="submit" class="btn btn-primary">Đăng nhập</button>
   </form>

   <!-- Thông báo lỗi -->
   <div class="mt-3 text-danger">
       <%= (request.getParameter("tb") != null ? request.getParameter("tb") : "") %>
   </div>
</div>
</body>
</html>

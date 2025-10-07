<%@page import="Modal.sachbo"%>
<%@page import="Modal.sach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modal.loaibo"%>
<%@page import="Modal.loai"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Link Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Công ty sách ABC</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">Trang
							chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Giỏ hàng</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Thanh
							toán</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Lịch sử
							khách hàng</a></li>
					<li class="nav-item"><a class="nav-link" href="dangnhap.jsp">Đăng
							nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng
							xuất</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> Xin
							chào: <%=session.getAttribute("un") %>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="row">
		<div class="col-sm-3">
			<%   loaibo lbo = new loaibo();
         for (loai L: lbo.getloai()) {
     %>
			<a href="tc.jsp?ml=<%=L.getMaloai()%>"> <%=L.getTenloai()%> <br>
			</a>
			<% } %>
		</div>
</div>
<div class="col-sm-6">
    <div class="row">
        <%
            sachbo sbo = new sachbo();
            ArrayList<sach> ds = sbo.getsach();   
            for(sach s: ds){
        %>
            <div class="col-sm-4"> 
                <img src="<%=s.getAnh()%>" width="200" height="200"> <br>
                <%= s.getTensach() %> <br>
                Tác giả: <%= s.getTacgia() %> <br>
                Giá: <%= s.getGia() %> VNĐ <br>
            </div>
        <%
            }
        %>
    </div> <!-- đóng row -->
</div> <!-- đóng col-sm-6 -->

<div class="col-sm-3">Tim kiem</div>

</body>
</html>

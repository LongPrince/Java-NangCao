<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Logo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trang chu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Gio hang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Lich su khach hang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Dang nhap</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Dang xuat</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Xin chao:<%=session.getAttribute("un") %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Xin chao:<%=session.getAttribute("un") %></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Dropdown</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Link</a></li>
                            <li><a class="dropdown-item" href="#">Another link</a></li>
                            <li><a class="dropdown-item" href="#">A third link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-3">
        <div class="row">
            <!-- Left Column -->
            <div class="col-sm-3">
                <% for (int i = 1; i <= 100; i++) { %>
                    <a href="tc.jsp?b=<%= i %>">Bang CC: <%= i %></a> <hr>
                <% } %>
            </div>

            <!-- Right Column (Form with checkboxes) -->
            <div class="col-sm-9">
                <form action="" method="post">
                    <% for (int i = 1; i <= 10; i++) { %>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="mail" value="<%= i %>" id="mail<%= i %>">
                            <label class="form-check-label" for="mail<%= i %>">Mail thu <%= i %></label>
                        </div>
                        <hr>
                    <% } %>
                    <input type="submit" name="aa" value="Send" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</body>
</html>

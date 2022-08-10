<%-- 
    Document   : ListUser
    Created on : Nov 28, 2021, 8:49:47 PM
    Author     : Admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="QLUSER.QLUSER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/css/style.css">

        <script src="https://kit.fontawesome.com/b5aef14fab.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header class="topbar">
            <nav class="navbar">
                <div class="navbar-header">
                    <a href="../QuanLy.jsp" style="color: #fff;">Quản lý khách hàng CRM</a>
                </div>
                <div class="navbar-account">
                    <a href="">                    
                        <i class="fas fa-user-circle"></i>
                    </a>
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="sidebar">
                <ul class="">
                    <li class="sidebar-option"><a href="../userJSP/ListUser.jsp">Quản lý tài khoản</a></li>
                    <li class="sidebar-option"><a href="../khachhangJSP/ListKhachhang.jsp">Quản lý khách hàng</a></li>
                    <li class="sidebar-option"><a href="../nhanvienJSP/ListNhanvien.jsp">Quản lý nhân viên</a></li>
                    <li class="sidebar-option"><a href="../phancongJSP/ListPC.jsp">Danh sách phân công</a></li>
                </ul>
            </div>
            <div class="card">
                <div class="card-body">
                    <h4 class="title-color">Danh sách tài khoản</h4>
                    <div class="input-find">
                        <form class="" method="post" action="search_User.jsp">
                            <input type="text" class="searchbox" name="name" placeholder="Họ tên">
                            <input type="text" class="searchbox" name="mail" placeholder="Email">
                            <input type="text" class="searchbox" name="role" placeholder="Số điện thoại">
                            <input type="text" class="searchbox" name="trangthai" placeholder="Trạng thái">
                            <button onclick="" class="btn btn-sm btn-search">
                                <i class="fa fa-search"></i>
                                Tìm kiếm
                            </button>
                        </form>
                    </div>
                    <a href="Add_user.jsp">
                        <button class="btn btn-primary" value="">
                            <i class="fa fa-plus"></i>
                            Thêm tài khoản
                        </button>
                    </a>
                    <%
                        QLUSER model = new QLUSER();
                        ResultSet rs = model.GetDSUser();
                    %>
                    <table class="table table-striped table-bordered table-condensed table-hover table-data">
                        <thead class="thead">
                            <tr>
                                <th>Mã người dùng</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Mật khẩu</th>
                                <th>Vai trò người dùng</th>
                                <th>Trạng thái</th>
                                <th>Ngày cập nhật</th>
                                <th colspan="2" align="center">Thao tác</th>
                            </tr>
                        </thead>
                        <%
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><% out.print(rs.getString("id")); %></td>
                            <td><% out.print(rs.getString("name")); %></td>
                            <td><% out.print(rs.getString("email")); %></td>
                            <td><% out.print(rs.getString("password")); %></td>
                            <td><% out.print(rs.getString("role")); %></td>
                            <td><% out.print(rs.getString("trangthai")); %></td>
                            <td><% out.print(rs.getString("created_at"));%></td>
                            <td><a href="LayDLUser.jsp?id=<%=rs.getString("id")%>"><img src="../assets/img/edit.png" style="width:30px; height:30px"></a></td>
                            <td><a href="xoaUser.jsp?id=<%=rs.getString("id")%>" onclick="if (confirm('Bạn có chắc chắn xóa không?'))
                                        return true;
                                    return false;"><img src="../assets/img/delete.png" style="width:30px; height:30px"></a></td>
                        </tr>
                        <% }%>
                    </table>
                </div>
            </div>
        </div>        
    </body>
</html>

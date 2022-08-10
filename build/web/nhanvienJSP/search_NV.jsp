<%-- 
    Document   : search_NV
    Created on : Dec 1, 2021, 4:28:10 PM
    Author     : admin
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h4 class="title-color">Danh sách nhân viên</h4>
                    <div class="input-find">
                        <form class="" method="post" action="search_NV.jsp">
                            <input type="text" class="searchbox" name="name" placeholder="Họ tên">
                            <input type="text" class="searchbox" name="diachi" placeholder="Địa chỉ">
                            <input type="text" class="searchbox" name="phone" placeholder="Số điện thoại">
                            <input type="text" class="searchbox" name="trangthai" placeholder="Trạng thái">
                            <button onclick="" class="btn btn-sm btn-search">
                                <i class="fa fa-search"></i>
                                Tìm kiếm
                            </button>
                        </form>
                    </div>
                    <a href="Add_Nhanvien.jsp">
                        <button class="btn btn-primary" value="">
                            <i class="fa fa-plus"></i>
                            Thêm nhân viên
                        </button>
                    </a>
                    <%
                        String driver = "com.mysql.jdbc.Driver";
                        String connectionUrl = "jdbc:mysql://localhost:3306/";
                        String database = "qlkhachhang";
                        String userid = "root";
                        String password = "";
                        String name = request.getParameter("name");
                        String diachi = request.getParameter("diachi");
                        String sodienthoai = request.getParameter("phone");
                        String trangthai = request.getParameter("trangthai");

                        try {
                            Class.forName(driver);
                        } catch (ClassNotFoundException e) {
                            e.printStackTrace();
                        }
                        Connection connection = null;
                        Statement statement = null;
                        ResultSet resultSet = null;
                    %>
                    <table class="table table-striped table-bordered table-condensed table-hover table-data">
                        <thead class="thead">
                            <tr>
                                <th>Mã nhân viên</th>
                                <th>Họ tên</th>
                                <th>Số điện thoại</th>
                                <th>AccountID</th>
                                <th>Địa chỉ</th>
                                <th>Trạng thái</th>
                                <th>Ngày cập nhật</th>
                                <th colspan="2" align="center">Thao tác</th>
                            </tr>
                        </thead>
                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql = "select * from nhanvien1 where name like '%" + name + "%' and diachi like '%" + diachi + "%' and phone like '%" + sodienthoai + "%' and trangthai like '%" + trangthai + "%'";
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                        <tr>
                            <td><% out.print(resultSet.getString("id")); %></td>
                            <td><% out.print(resultSet.getString("name")); %></td>
                            <td><% out.print(resultSet.getString("phone")); %></td>
                            <td><% out.print(resultSet.getString("accountId")); %></td>
                            <td><% out.print(resultSet.getString("diachi")); %></td>
                            <td><% out.print(resultSet.getString("trangthai")); %></td>
                            <td><% out.print(resultSet.getString("created_at"));%></td>
                            <td><a href="LayDLNhanvien.jsp?id=<%=resultSet.getString("id")%>"><img src="../assets/img/edit.png" style="width:30px; height:30px"></a></td>
                            <td><a href="XoaNhanvien.jsp?id=<%=resultSet.getString("id")%>" onclick="if (confirm('Bạn có chắc chắn xóa không?'))
                                        return true;
                                    return false;"><img src="../assets/img/delete.png" style="width:30px; height:30px"></a></td>
                        </tr>
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>

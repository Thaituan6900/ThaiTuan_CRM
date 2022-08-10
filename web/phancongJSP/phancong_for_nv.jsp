<%-- 
    Document   : phancong_for_nv
    Created on : Dec 2, 2021, 10:12:00 PM
    Author     : admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="QLPC.QLPC"%>
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
                    <a href="" style="color: #fff;">Quản lý khách hàng CRM</a>
                </div>
                <div class="navbar-account">
                    <a href="">                    
                        <i class="fas fa-user-circle"></i>
                    </a>
                    <a href="../logout.jsp" style="margin-left: 10px;">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                    </a>  
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="sidebar">
                <ul class="">
                    <li class="sidebar-option"><a href="../khachhangJSP/khachhang_for_nv.jsp">Quản lý khách hàng</a></li>
                    <li class="sidebar-option"><a href="../nhanvienJSP/nhanvien.jsp">Quản lý nhân viên</a></li>
                    <li class="sidebar-option"><a href="../phancongJSP/phancong_for_nv.jsp">Danh sách phân công</a></li>
                </ul>
            </div>
            <div class="card">
                <div class="card-body">
                    <h4 class="title-color">Danh sách phân công nhân viên chăm sóc khách hàng</h4>
                    <div class="input-find">
                        <form class="" method="post" action="timkiem_phancong_for_nv.jsp">
                            <input type="text" class="searchbox" name="nv" placeholder="Tên nhân viên">
                            <input type="text" class="searchbox" name="kh" placeholder="Tên khách hàng">
                            <input type="text" class="searchbox" name="histories" placeholder="Lịch sử chăm sóc">
                            <button type="submit" onclick="" class="btn btn-sm btn-search">
                                <i class="fa fa-search"></i>
                                Tìm kiếm
                            </button>
                        </form>
                    </div>
                    <%
                        QLPC model = new QLPC();
                        ResultSet rs = model.GetDSPC();
                    %>
                    <table class="table table-striped table-bordered table-condensed table-hover table-data">
                        <thead class="thead">
                            <tr>
                                <th>Mã phân công</th>
                                <th>Nhân viên</th>
                                <th>Khách hàng</th>
                                <th>Lịch sử chăm sóc</th>
                                <th>Ngày cập nhật</th>
                            </tr>
                        </thead>
                        <%
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><% out.print(rs.getString("id")); %></td>
                            <td><% out.print(rs.getString("nhanvien")); %></td>
                            <td><% out.print(rs.getString("khachhang")); %></td>
                            <td><% out.print(rs.getString("histories")); %></td>
                            <td><% out.print(rs.getString("created_at"));%></td>
                        </tr>
                        <% }%>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>

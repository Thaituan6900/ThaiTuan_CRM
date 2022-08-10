<%-- 
    Document   : Add_PC
    Created on : Nov 29, 2021, 2:35:44 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                    <h4 class="title-color">Thêm thông tin chăm sóc khách hàng</h4>
                    <form action="xuli_themPC.jsp" method="POST" class="form-update">
                        <div class="form-group">
                            <label for="nv">Nhân viên: </label>
                            <select required="true" type="text" name="txt_NV" id="nv" class="form-select form-select-sm">
                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String url = new String("jdbc:mysql://127.0.0.1:3306/qlkhachhang");
                                        Connection con = DriverManager.getConnection(url, "root", "");
                                        Statement st = con.createStatement();
                                        String query = "select * from nhanvien1";
                                        ResultSet rsnv = st.executeQuery(query);
                                        while (rsnv.next()) {
                                %>
                                <option><%=rsnv.getString("name")%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.getStackTrace();
                                    }
                                %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="kh">Khách hàng: </label>
                            <select required="true" type="text" name="txt_KH" id="kh" class="form-select form-select-sm">
                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String url = new String("jdbc:mysql://127.0.0.1:3306/qlkhachhang");
                                        Connection con = DriverManager.getConnection(url, "root", "");
                                        Statement st = con.createStatement();
                                        String query = "select * from khachhang1";
                                        ResultSet rsnv = st.executeQuery(query);
                                        while (rsnv.next()) {
                                %>
                                <option><%=rsnv.getString("name")%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.getStackTrace();
                                    }
                                %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="histories">Lịch sử chăm sóc: </label>
                            <input required="true" type="text" name="txt_histories" id="histories" class="form-control">
                        </div>
                        <div class="form-buttons">
                            <input type="submit" name="btn_them" class="btn btn-modify" value="Thêm">
                            <input type="reset" name="btn_reset" class="btn btn-reset" value="Reset">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>

<%-- 
    Document   : xuli_themKhachhang
    Created on : Nov 28, 2021, 11:16:15 PM
    Author     : Admin
--%>

<%@page import="QLKH.QLKH"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm thành công</title>
    </head>
    <body>
        <%
            String name = request.getParameter("txt_tenKhachhang");
            String phone = request.getParameter("txt_phoneKhachhang");
            String accountId = request.getParameter("txt_accountidKhachhang");
            String diachi = request.getParameter("txt_diachiKhachhang");
            String trangthai = request.getParameter("txt_trangthaiKhachhang");
            String created_at = request.getParameter("txt_catKhachhang");
            QLKH model = new QLKH();
            model.themKhachhang(name, phone, accountId, diachi, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Thêm Khách hàng thành công !</h1>  
        <a href="ListKhachhang.jsp"><button>Danh sách khách hàng</button></a>
        <a href="../phancongJSP/Add_PC.jsp"><button value="">Add Phân Công</button></a>
    </body>
</html>

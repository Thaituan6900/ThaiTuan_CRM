<%-- 
    Document   : Xuli_themNhanvien
    Created on : Nov 29, 2021, 12:28:30 AM
    Author     : Admin
--%>

<%@page import="QLNV.QLNV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa thành công</title>
    </head>
    <body>
        <%
            String name = request.getParameter("txt_tenNhanvien");
            String phone = request.getParameter("txt_phoneNhanvien");
            String accountId = request.getParameter("txt_accountidNhanvien");
            String diachi = request.getParameter("txt_diachiNhanvien");
            String trangthai = request.getParameter("txt_trangthaiNhanvien");
            String created_at = request.getParameter("txt_catNhanvien");
            QLNV model = new QLNV();
            model.themNhanvien(name, phone, accountId, diachi, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Thêm Nhân viên thành công !</h1>  
        <a href="ListNhanvien.jsp"><button>DSNV</button></a>
        <a href="../phancongJSP/Add_PC.jsp"><button value="">Add Phân Công</button></a>
    </body>
</html>

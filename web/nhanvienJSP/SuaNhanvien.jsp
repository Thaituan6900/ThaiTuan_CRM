<%-- 
    Document   : SuaNhanvien
    Created on : Nov 29, 2021, 12:30:08 AM
    Author     : Admin
--%>

<%@page import="QLNV.QLNV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("txt_maNhanvien");
            String name = request.getParameter("txt_tenNhanvien");
            String phone = request.getParameter("txt_phoneNhanvien");
            String accountId = request.getParameter("txt_accountidNhanvien");
            String diachi = request.getParameter("txt_diachiNhanvien");
            String trangthai = request.getParameter("txt_trangthaiNhanvien");
            String created_at = request.getParameter("txt_catNhanvien");
            QLNV model = new QLNV();
            model.suaNhanvien(id, name, phone, accountId, diachi, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Sửa Nhân viên thành công !</h1> 
        <a href="ListNhanvien.jsp"><button>DSNV</button></a>
    </body>
</html>

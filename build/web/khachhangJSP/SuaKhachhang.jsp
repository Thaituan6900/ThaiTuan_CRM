<%-- 
    Document   : SuaKhachhang
    Created on : Nov 28, 2021, 11:15:32 PM
    Author     : Admin
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="QLKH.QLKH"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("txt_maKhachhang");
            String name = request.getParameter("txt_tenKhachhang");
            String phone = request.getParameter("txt_phoneKhachhang");
            String accountId = request.getParameter("txt_accountidKhachhang");
            String diachi = request.getParameter("txt_diachiKhachhang");
            String trangthai = request.getParameter("txt_trangthaiKhachhang");
            String created_at = request.getParameter("txt_catKhachhang");
            QLKH model = new QLKH();
            model.suaKhachhang(id, name, phone, accountId, diachi, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Sửa khách hàng thành công!</h1> 
        <a href="ListKhachhang.jsp"><button>Danh sách khách hàng</button></a>
    </body>
</html>

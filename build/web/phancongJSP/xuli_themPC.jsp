<%-- 
    Document   : xuli_themPC
    Created on : Nov 29, 2021, 2:36:26 AM
    Author     : Admin
--%>

<%@page import="QLPC.QLPC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nhanvien = request.getParameter("txt_NV");
            String khachhang = request.getParameter("txt_KH");
            String histories = request.getParameter("txt_histories");
            String created_at = request.getParameter("txt_at");
            QLPC model = new QLPC();
            model.themPC(nhanvien, khachhang, histories, created_at);
        %>
        <h1 style="color:#33ff33">Thêm phân công chăm sóc khách hàng thành công!</h1>  
        <a href="ListPC.jsp"><button>DSPC</button></a>

    </body>
</html>

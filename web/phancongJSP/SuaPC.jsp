<%-- 
    Document   : SuaPC
    Created on : Nov 29, 2021, 2:37:39 AM
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
            String id = request.getParameter("txt_ID");
            String nhanvien = request.getParameter("txt_NV");
            String khachhang = request.getParameter("txt_KH");
            String histories = request.getParameter("txt_histories");
            String created_at = request.getParameter("txt_at");
            QLPC model = new QLPC();
            model.suaPC(id, nhanvien, khachhang, histories, created_at);
        %>
        <h1 style="color:#33ff33">Sửa thành công !</h1> 
        <a href="ListPC.jsp"><button>DSPC</button></a>
    </body>
</html>

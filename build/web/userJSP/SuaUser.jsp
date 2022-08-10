<%-- 
    Document   : SuaUser
    Created on : Nov 28, 2021, 9:57:44 PM
    Author     : Admin
--%>

<%@page import="QLUSER.QLUSER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("txt_maUser");
            String name = request.getParameter("txt_tenUser");
            String email = request.getParameter("txt_emailUser");
            String password = request.getParameter("txt_passwordUser");
            String role = request.getParameter("txt_roleUser");
            String trangthai = request.getParameter("txt_trangthaiUser");
            String created_at = request.getParameter("txt_catUser");
            QLUSER model = new QLUSER();
            model.suaUser(id, name, email, password, role, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Sửa người dùng thành công!</h1> 
        <a href="ListUser.jsp"><button>Danh sách người dùng</button></a>
    </body>
</html>

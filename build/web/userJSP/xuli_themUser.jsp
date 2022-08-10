<%-- 
    Document   : xuli_themUser
    Created on : Nov 28, 2021, 9:13:30 PM
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
            String name = request.getParameter("txt_tenUser");
            String email = request.getParameter("txt_emailUser");
            String password = request.getParameter("txt_passwordUser");
            String role = request.getParameter("txt_roleUser");
            String trangthai = request.getParameter("txt_trangthaiUser");
            String created_at = request.getParameter("txt_catUser");
            QLUSER model = new QLUSER();
            model.themUser(name, email, password, role, trangthai, created_at);
        %>
        <h1 style="color:#33ff33">Thêm người dùng thành công !</h1>  
        <a href="ListUser.jsp"><button>Danh sách tài khoản</button></a>
    </body>
</html>

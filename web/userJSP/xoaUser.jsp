<%-- 
    Document   : xoaUser
    Created on : Nov 28, 2021, 9:59:46 PM
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
           String idUser = request.getParameter("id");
           int id=Integer.parseInt(idUser);
           QLUSER model = new QLUSER();
           model.delUser(id);
        %>
        <h1 style="color:#33ff33">Xóa người dùng thành công !</h1>        
        <a href="ListUser.jsp"><button class="btn btn-success">Danh sách người dùng</button></a>
    </body>
</html>

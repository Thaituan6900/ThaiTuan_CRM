<%-- 
    Document   : XoaNhanvien
    Created on : Nov 29, 2021, 12:30:17 AM
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
           String idNhanvien = request.getParameter("id");
           int id=Integer.parseInt(idNhanvien);
           QLNV model = new QLNV();
           model.delNhanvien(id);
        %>
        <h1 style="color:#33ff33">Xóa Nhân viên thành công !</h1>        
        <a href="ListNhanvien.jsp"><button>DSNV</button></a>
    </body>
</html>

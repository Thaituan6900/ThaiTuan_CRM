<%-- 
    Document   : XoaKhachhang
    Created on : Nov 28, 2021, 11:15:45 PM
    Author     : Admin
--%>

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
           String idKhachhang = request.getParameter("id");
           int id=Integer.parseInt(idKhachhang);
           QLKH model = new QLKH();
           model.delKhachhang(id);
        %>
        <h1 style="color:#33ff33">Xóa Khách hàng thành công !</h1>        
        <a href="ListKhachhang.jsp"><button>DSKH</button></a>
    </body>
</html>

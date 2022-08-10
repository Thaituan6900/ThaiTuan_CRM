<%-- 
    Document   : XoaPC
    Created on : Nov 29, 2021, 2:37:47 AM
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
           String idKhachhang = request.getParameter("id");
           int id=Integer.parseInt(idKhachhang);
           QLPC model = new QLPC();
           model.delPC(id);
        %>
        <h1 style="color:#33ff33">Xóa thành công !</h1>        
        <a href="ListPC.jsp"><button>DSPC</button></a>
    </body>
</html>

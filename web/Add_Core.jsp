<%-- 
    Document   : process_add_Hang
    Created on : 07-10-2021, 10:10:49
    Author     : Admin
--%>
<%@page import="DKDN.DKDN" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký</title>
    </head>
    <body>
        <%  
            
             String ten= request.getParameter("ten");
             String email= request.getParameter("email");
             String matkhau= request.getParameter("mk");
             String role= request.getParameter("loai");
             String ngaydangky=request.getParameter("ngaydk");
                   
            DKDN model = new DKDN();
            model.them(ten, email, matkhau, role, ngaydangky);
            response.sendRedirect("dangnhap.jsp");
        %>
        
       
    </body>
</html>

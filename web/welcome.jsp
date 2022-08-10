<%-- 
    Document   : welcome
    Created on : Dec 2, 2021, 12:28:26 AM
    Author     : Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String userName = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
        for(Cookie cookie : cookies){
                if(cookie.getName().equals("user")) userName = cookie.getValue();
        }
        }
        if(userName == null) response.sendRedirect("dangnhap.jsp");
        %>
        <h1>Xin chào <%=userName %>, </h1>
        <h1>Đăng nhập thành công!</h1>
        <form action="logout.jsp" method="post">
        <input type="submit" value="Logout" >
        </form>
    </body>
</html>

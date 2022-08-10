<%-- 
    Document   : logout
    Created on : Dec 2, 2021, 3:03:31 PM
    Author     : Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="DKDN.DKDN" import="java.sql.Connection" import="javax.servlet.http.Cookie" import="java.sql.DriverManager" import="java.sql.PreparedStatement" import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <%
            response.setContentType("text/html");
             Cookie loginCookie = null;
             Cookie[] cookies = request.getCookies();
             if(cookies != null){
             for(Cookie cookie : cookies){
                     if(cookie.getName().equals("user")){
                             loginCookie = cookie;
                             break;
                     }
             }
             }
             if(loginCookie != null){
                     loginCookie.setMaxAge(0);
                     response.addCookie(loginCookie);
             }
             response.sendRedirect("dangnhap.jsp");
        %>
    </body>
</html>

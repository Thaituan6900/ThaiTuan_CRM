<%-- 
    Document   : log_core
    Created on : Dec 1, 2021, 9:14:00 PM
    Author     : Kien
--%>
<%@page import="DKDN.DKDN" import="java.sql.Connection" import="javax.servlet.http.Cookie" import="java.sql.DriverManager" import="java.sql.PreparedStatement" import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>

        <%  int a = 1;
            int b = 2;
            if (request.getParameter("Email") == null) {
                response.sendRedirect("dangnhap.jsp?q=" + a);
            } else if (request.getParameter("password") == null) {
                response.sendRedirect("dangnhap.jsp?q=" + b);
            }

            String email = request.getParameter("Email");
            String matkhau = request.getParameter("password");
            Cookie loginCookie = new Cookie("user", email);
            //setting cookie to expiry in 30 mins
            loginCookie.setMaxAge(30 * 60);
            response.addCookie(loginCookie);
            System.out.println("Đăng nhập thành công ");

            DKDN model = new DKDN();
            ResultSet rs = model.login(email, matkhau);
            rs.last();
            int count = rs.getRow();
            try {
                if (count != 0) {
                    DKDN c = new DKDN();
                    ResultSet rd = c.login(email, matkhau);
                    while (rd.next()) {
                        String cv = rd.getString("role");
                        System.out.println(cv);
                        if (cv == null) {
                        } else if (cv.equals("0")) {
                            response.sendRedirect("QuanLy.jsp");
                        } else if (cv.equals("1")) {
                            response.sendRedirect("nhanvienJSP/nhanvien.jsp");
                        } else if (cv.equals("2")) {
                            response.sendRedirect("nhanvienJSP/nhanvien_for_kh.jsp");
                        }

                    }
                } else {
                    System.out.println("Sai email or mat khau ");

                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

    </body>
</html>

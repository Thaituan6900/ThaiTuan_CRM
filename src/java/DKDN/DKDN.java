/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DKDN;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Kien
 */
public class DKDN {

    private Connection con;

    public DKDN() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = new String("jdbc:mysql://127.0.0.1:3306/qlkhachhang");
            try {
                con = DriverManager.getConnection(url, "root", "");
                System.out.println("Kết nối thành công !");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public ResultSet GetDS() {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("Select * from taikhoan");
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int them(String ten, String email, String matkhau, String role, String ngaydangky) {
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("insert into taikhoan(ten, email, matkhau, role, ngaydangky) values (?,?,?,?,?)");

            ps.setString(1, ten);
            ps.setString(2, email);
            ps.setString(3, matkhau);
            ps.setString(4, role);
            ps.setString(5, ngaydangky);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }

    public int loginnv(String email, String matkhau) {
       int kq= -1;
        try {
       
            PreparedStatement ps = this.getCon().prepareCall("select * from taikhoan where email= ? and matkhau= ?)");
             ps.setString(1, email);
             ps.setString(2, matkhau);
             kq = ps.executeUpdate();
            
       } catch (SQLException e) {
           e.printStackTrace();
        } finally {
            return kq;
        }
   }
     public ResultSet login(String email, String matkhau) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("select * from taikhoan  where email='"+email+"' and matkhau='"+matkhau+"'" );
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
     public ResultSet quenmatkhau(String email) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("select * from taikhoan  where email='"+email+"'" );
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
      public ResultSet taoma(String email ,String matkhau) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("update taikhoan set matkhau='"+matkhau+"'  where email='"+email+"'" );
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
        
 }



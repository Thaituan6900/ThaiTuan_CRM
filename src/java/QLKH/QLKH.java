/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QLKH;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.Instant;
import static java.time.Instant.now;

/**
 *
 * @author Admin
 */
public class QLKH {

    private Connection con;

    public QLKH() {
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

    public ResultSet GetDSKhachhang() {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("Select * from khachhang1");
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public java.sql.Timestamp getCurrentTimestamp() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Timestamp(today.getTime());
    }

    public int themKhachhang(String name, String phone, String accountId, String diachi, String trangthai, String ngaytao) {
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("insert into khachhang1 (name,phone,accountId,diachi,trangthai, created_at) values (?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, accountId);
            ps.setString(4, diachi);
            ps.setString(5, trangthai);
            ps.setString(6, ngaytao);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }

    public ResultSet getKhachhangById(String id) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("select * from khachhang1 where id = " + id);
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int suaKhachhang(String id, String name, String phone, String accountId, String diachi, String trangthai, String ngaytao) {
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("update khachhang1 set name = ?, phone = ?, accountId = ?, diachi = ?, trangthai = ?, created_at = ? where id = ?");
            ps.setString(7, id);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, accountId);
            ps.setString(4, diachi);
            ps.setString(5, trangthai);
            ps.setString(6, ngaytao);
//            ps.setTimestamp(6, ngaytao);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }

    public int delKhachhang(int id) {
        int result = 0;
        try {
            PreparedStatement pst = this.getCon().prepareStatement("Delete from khachhang1 where id = ?");
            pst.setInt(1, id);

            result = pst.executeUpdate();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return result;
        }
    }
}

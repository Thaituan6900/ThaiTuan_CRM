/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QLUSER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class QLUSER {

    private Connection con;

    public QLUSER() {
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

    public ResultSet GetDSUser() {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("Select * from user1");
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int themUser(String name, String email, String password, String role, String trangthai, String created_at) {
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("insert into user1 (name,email,password,role,trangthai,created_at) values (?,?,?,?,?,?)");
//            ps.setString(1, id);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);
            ps.setString(5, trangthai);
            ps.setString(6, created_at);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }

    public ResultSet getUserById(String id) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("select * from user1 where id = " + id);
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int suaUser(String id, String name, String email, String password, String role, String trangthai, String created_at) {
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("update user1 set name = ?, email = ?, password = ?, role = ?, trangthai = ?, created_at = ? where id = ?");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);
            ps.setString(5, trangthai);
            ps.setString(6, created_at);
            ps.setString(7, id);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }

    public int delUser(int id) {
        int result = 0;
        try {
            PreparedStatement pst = this.getCon().prepareStatement("Delete from user1 where id = ?");
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

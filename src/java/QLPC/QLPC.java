/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QLPC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class QLPC {
    private Connection con;
    public QLPC(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = new String("jdbc:mysql://127.0.0.1:3306/qlkhachhang");
            try {
                con = DriverManager.getConnection(url, "root","");
                System.out.println("Kết nối thành công !");
            }catch(SQLException e){
                e.printStackTrace();
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }
    
    public Connection getCon(){
        return con;
    }
    public void setCon(Connection con){
        this.con = con;
    }
    
    public ResultSet GetDSPC(){
        try{
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("Select * from phancong1");
            return rs;
        }catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public int themPC( String nhanvien, String khachhang, String histories, String created_at){
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("insert into phancong1 (nhanvien,khachhang,histories,created_at) values (?,?,?,?)");
            ps.setString(1, nhanvien);
            ps.setString(2, khachhang);
            ps.setString(3, histories);
            ps.setString(4, created_at);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }
    public ResultSet getPCById(String id) {
        try {
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("select * from phancong1 where id = " + id);
            
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    
    public int suaPC(String id, String nhanvien, String khachhang, String histories, String created_at){
        int kq = -1;
        try {
            PreparedStatement ps = this.getCon().prepareCall("update phancong1 set nhanvien = ?, khachhang = ?, histories = ?, created_at = ? where id = ?");
            ps.setString(1, nhanvien);
            ps.setString(2, khachhang);
            ps.setString(3, histories);
            ps.setString(4, created_at);
            ps.setString(5, id);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return kq;
        }
    }
    
    public int delPC(int id){
          int result =0;
          try {
            PreparedStatement pst = this.getCon().prepareStatement("Delete from phancong1 where id = ?");
            pst.setInt(1, id);
            
            result = pst.executeUpdate();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            return result; 
        }
    }
    
    
}

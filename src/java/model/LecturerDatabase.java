/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Asus
 */
public class LecturerDatabase implements DBUrl{
    
    public static ArrayList<Lecturer> getLecturerInfo(String id) throws ClassNotFoundException, SQLException{
        ArrayList<Lecturer> lec = new ArrayList<>();
        try{
            Class.forName(clas);
            Connection c = DriverManager.getConnection(url, username, pass);
            PreparedStatement ps = c.prepareStatement("SELECT * FROM oes.lecturer where lecturer_id=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Lecturer l = new Lecturer();
                l.setId(rs.getString("lecturer_id"));
                l.setFullname(rs.getString("lecturer_fullname"));
                l.setEmail(rs.getString("lecturer_email"));
                l.setPassword(rs.getString("lecturer_password"));
                lec.add(l);
            }
            
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        return lec;
    }
    
    public static Lecturer login(String id, String password) throws ClassNotFoundException{
        try{
            Class.forName(clas);
            Connection con = DriverManager.getConnection(url, username, pass);
            
            PreparedStatement ps = con.prepareStatement("SELECT * FROM oes.lecturer WHERE lecturer_id=? AND lecturer_password=?");
            ps.setString(1, id);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                Lecturer l = new Lecturer();
                l.setId(rs.getString("lecturer_id"));
                l.setFullname(rs.getString("lecturer_fullname"));
                l.setEmail(rs.getString("lecturer_email"));
                l.setPassword(rs.getString("lecturer_password"));
                return l;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    
    public static boolean isLecturerExist(String fullname) throws ClassNotFoundException{
        boolean isExist=false;
        try{
            Class.forName(clas);
            Connection con = DriverManager.getConnection(url, username, pass);
            PreparedStatement ps = con.prepareStatement("SELECT count(*) FROM oes.lecturer WHERE lecturer_fullname=?");
            ps.setString(1, fullname);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                int count = rs.getInt(1);
                isExist = count > 0;
            }
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        return isExist;
    }
    
    public static Lecturer getLecturerById(String id) throws ClassNotFoundException{
        Lecturer lec = null;
        try{
            Class.forName(clas);
            Connection con = DriverManager.getConnection(url, username, pass);
            PreparedStatement ps = con.prepareStatement("SELECT * FROM oes.lecturer WHERE lecturer_id=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Lecturer l = new Lecturer();
                l.setId(rs.getString("lecturer_id"));
                l.setFullname(rs.getString("lecturer_fullname"));
                l.setEmail(rs.getString("lecturer_email"));
                l.setPassword(rs.getString("lecturer_password"));
                return l;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}

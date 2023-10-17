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
import static model.DBUrl.clas;
import static model.DBUrl.pass;
import static model.DBUrl.url;
import static model.DBUrl.username;

/**
 *
 * @author Asus
 */
public class StudentDatabase implements DBUrl{
    public static Student login(String id, String password) throws ClassNotFoundException{
        try{
            Class.forName(clas);
            Connection con = DriverManager.getConnection(url, username, pass);
            
            PreparedStatement ps = con.prepareStatement("SELECT * FROM oes.student WHERE student_id=? AND student_password=?");
            ps.setString(1, id);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                Student s = new Student();
                s.setId(rs.getString("student_id"));
                s.setFullname(rs.getString("student_fullname"));
                s.setGroup(rs.getString("student_group"));
                s.setEmail(rs.getString("student_email"));
                s.setPassword(rs.getString("student_password"));
                return s;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}

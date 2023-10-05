/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(name = "StudentRegiServlet", urlPatterns = {"/StudentRegiServlet"})
public class StudentRegiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("registerS.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("sID");
        String name = request.getParameter("sName");
        String email = request.getParameter("sEmail");
        String birth = request.getParameter("sBirth");
        String gender = request.getParameter("sGender");
        String password = request.getParameter("sPass");
        
        RequestDispatcher requestDispatcher = null;
        Connection con = null;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/list","root","maimotnguoi123");
            PreparedStatement ps = con.prepareStatement("insert into list.student(id,name,email,birth,gender,password) value(?,?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, birth);
            ps.setString(5, gender);
            ps.setString(6, password);
            
            int rowCount = ps.executeUpdate();
            if(rowCount>0){
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("registerS.jsp");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

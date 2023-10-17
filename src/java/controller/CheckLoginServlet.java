/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Lecturer;
import model.LecturerDatabase;

/**
 *
 * @author Asus
 */
public class CheckLoginServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {   
            String userId = (String) request.getSession().getAttribute("loginHead");
            ArrayList<Lecturer> lec = LecturerDatabase.getLecturerInfo(userId);
            request.setAttribute("listLec", lec);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) { 
            Logger.getLogger(CheckLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("infoLec.jsp").forward(request, response);
    }
}

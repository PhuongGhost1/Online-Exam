/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Lecturer;
import model.LecturerDatabase;
import model.Student;
import model.StudentDatabase;

/**
 *
 * @author Asus
 */
public class LoginLecServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try {
            Lecturer l = LecturerDatabase.login(username, password);
            Student s = StudentDatabase.login(username, password);
            if(l!=null){
                request.getSession().setAttribute("loginHead", l.getId());
                request.getRequestDispatcher("mainview.jsp").forward(request, response);
            }else if(s!=null){
                request.getRequestDispatcher("indexStu.jsp").forward(request, response);
            }else{
                request.setAttribute("errorMessage", "Invailed username or password");
                request.getRequestDispatcher("firstBegin.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginLecServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

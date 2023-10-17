/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Asus
 */
@MultipartConfig
public class CreateQuestion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("question.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            Part part = request.getPart("photo");
            
            String realPath = request.getServletContext().getRealPath("/images");
            String fileName = Path.of(part.getSubmittedFileName()).getFileName().toString();
            if(!Files.exists(Path.of(realPath))){
                Files.createDirectories(Path.of(realPath));
            }
            part.write(realPath+"/"+fileName);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

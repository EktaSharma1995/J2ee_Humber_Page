/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.labassignment;

import com.labassignment.SubjectDetails;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ektasharma
 */
public class InsertSubjectDetails extends HttpServlet {
    
        private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            try {
            /* TODO output your page here. You may use following sample code. */
            
            String name=request.getParameter("name");
            
            SubjectDetails subjects = new SubjectDetails();
            subjects.setName(name);
            
            String[] subjectsArray = request.getParameterValues("subjects");
            
            for(int i=0; i<subjectsArray.length;i++){
                out.println("<li>" + subjectsArray[i]);
            }
            
            subjects.setSubjects(subjectsArray);
            RequestDispatcher dispatcher=request.getRequestDispatcher("/ResponseToSubject.jsp");

            request.setAttribute("sd",subjects);
            dispatcher.forward(request, response);
        }   catch (ServletException e) {
            e.printStackTrace();
        }   catch (IOException e) {
            e.printStackTrace();
        }   catch(Exception e){
            e.printStackTrace();
        }   
     }        
    }    


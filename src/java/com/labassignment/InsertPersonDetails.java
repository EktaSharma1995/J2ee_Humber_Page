/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.labassignment;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ektasharma
 */
public class InsertPersonDetails extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        try {
            /* TODO output your page here. You may use following sample code. */
            
            String name=request.getParameter("name");
            String city=request.getParameter("city");
            String postalCode=request.getParameter("pc");
            
            PersonDetails personDetails = new PersonDetails();
            personDetails.setName(name);
            personDetails.setCity(city);
            personDetails.setPostalCode(postalCode);
            
            RequestDispatcher dispatcher=request.getRequestDispatcher("/ResponseToPerson.jsp");

            request.setAttribute("pd",personDetails);
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

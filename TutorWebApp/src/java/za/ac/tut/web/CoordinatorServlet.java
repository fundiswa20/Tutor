/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.TutorFacadeLocal;
import za.ac.tut.model.entities.Tutor;

/**
 *
 * @author USER
 */
public class CoordinatorServlet extends HttpServlet {

    @EJB
    private TutorFacadeLocal tfl;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        String url =  "index.html";
        
        if(op.equals("3"))
        {
            Long males = tfl.numMales();
            request.setAttribute("males", males);
            url = "male_outcome.jsp";
            
        }
        else if(op.equals("4"))
        {
            Long females = tfl.numFemales();
            request.setAttribute("females", females);
            url = "female_outcome.jsp";
        }
        else if(op.equals("5"))
        {
            Tutor tutor =tfl.youngest();
            request.setAttribute("tutor", tutor);
            url = "youngest_outcome.jsp";
        }
        else if(op.equals("6"))
        {
            Double age = tfl.avgAge();
            
            request.setAttribute("age", age);
            url = "avg_outcome.jsp";
        }
        else
        {
            Tutor t = tfl.longest();
            request.setAttribute("t", t);
            url = "longest_outcome.jsp";
        }
        
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
    }


}

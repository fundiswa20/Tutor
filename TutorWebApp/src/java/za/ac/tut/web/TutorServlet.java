/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.model.bl.TutorFacadeLocal;
import za.ac.tut.model.entities.Modules;
import za.ac.tut.model.entities.Tutor;

/**
 *
 * @author USER
 */
@MultipartConfig
public class TutorServlet extends HttpServlet {
    @EJB
    private TutorFacadeLocal tfl;
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Part part = request.getPart("image");
        String url = "index.html";
        String op = request.getParameter("op");
        
        byte[] image = imageToByte(part);
        
        
        if(op.equals("1"))
        {
            String name = request.getParameter("name");
            Integer age = Integer.parseInt(request.getParameter("age"));
            Character gender = request.getParameter("gender").charAt(0);
            String[] mod = request.getParameterValues("module"); 
            List<Modules> modules = new ArrayList<>();
            for(int i = 0 ; i < mod.length;i++)
            {
                Modules m = new Modules(mod[i]);
                modules.add(m);
            }
            
            Tutor tutor = registerTutor(name,age,gender,image,modules);
            request.setAttribute("tutor", tutor);
            tfl.create(tutor);
            url = "register_outcome.jsp";
        }
        else if(op.equals("2"))
        {
            Long id = Long.parseLong(request.getParameter("id"));
            tfl.updateProfile(id, image);
            
           Tutor t = tfl.find(id);
           request.setAttribute("t", t);
           
           url="update_outcome.jsp";
        }
        
        
        
        RequestDispatcher disp  =  request.getRequestDispatcher(url);
        disp.forward(request, response);
    }

    private byte[] imageToByte(Part part) throws IOException {
        
        InputStream is = part.getInputStream();
        byte[] image = new byte[is.available()];      
        
        is.read(image);
        return image;
    }

    private Tutor registerTutor(String name, Integer age, Character gender, byte[] image, List<Modules> modules) {
        Tutor tutor = new Tutor();
        tutor.setAge(age);
        tutor.setGender(gender);
        tutor.setHireDate(Date.from(Instant.now()));
        tutor.setImage(image);
        tutor.setModules(modules);
        tutor.setName(name);

        return tutor;
    }
}

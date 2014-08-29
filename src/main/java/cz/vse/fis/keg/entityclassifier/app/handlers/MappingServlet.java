/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cz.vse.fis.keg.entityclassifier.app.handlers;

/**
 *
 * @author Milan Dojčinovski 
 * <dojcinovski.milan (at) gmail.com> 
 * Twitter: @m1ci 
 * www: http://dojchinovski.mk 
 */
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MappingServlet extends javax.servlet.http.HttpServlet {
    
    @Override
    public void doGet (HttpServletRequest request, HttpServletResponse response) {
        
        try {
            String reqResource = request.getRequestURI().substring(10);
//            System.out.println("req: " + reqResource);
            if(reqResource.equals("/")){
                request.getRequestDispatcher("../index.jsp").forward(request, response);
            }else{
//                System.out.println("here");
                String[] urlSplit = reqResource.split("/");
                request.getRequestDispatcher(reqResource + urlSplit[urlSplit.length-1] + ".jsp").forward(request, response);
            }
        } catch (ServletException ex) {
            Logger.getLogger(MappingServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MappingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
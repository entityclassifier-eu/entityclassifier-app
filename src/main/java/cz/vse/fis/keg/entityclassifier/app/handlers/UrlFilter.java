/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cz.vse.fis.keg.entityclassifier.app.handlers;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
/**
 *
 * @author Milan Dojčinovski 
 * <dojcinovski.milan (at) gmail.com> 
 * Twitter: @m1ci 
 * www: http://dojchinovski.mk 
 */
// Implements Filter class
public class UrlFilter implements javax.servlet.Filter {
    
    public void  init(FilterConfig config) throws ServletException{
        
    }
    
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        String path = req.getRequestURI().substring(req.getContextPath().length());

        if (path.startsWith("/public/")) {
            // Pass request back down the filter chain
            chain.doFilter(request,response);
        } else if (path.startsWith("/api/")){
            chain.doFilter(request,response); 
        } else {
//            System.out.println("From filter: "+ "/pages"+path);
            request.getRequestDispatcher("/pages" + path).forward(request, response);
        }
    }
    public void destroy( ){
      /* Called before the Filter instance is removed 
      from service by the web container*/
    }
}

/*
 * VerifyUser.java
 *
 * Created on December 26, 2009, 10:15 AM
 */

package Jewellery;

import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author uniq
 * @version
 */
public class VerifyUser extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void verifyUser(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        UserBean userBean = new UserBean();
        userBean.setUser_name(request.getParameter("user_name"));
        userBean.setPassword(request.getParameter("password"));
        session.setAttribute("USER" ,userBean);
             
        DataBase Db = new DataBase();
        if(Db.is_validUser(userBean)){
            
            if(Db.getRole(userBean).equalsIgnoreCase("customer")){
            
            RequestDispatcher rd = request.getRequestDispatcher("/product.jsp");
            rd.forward(request, response);
            }
            else if(Db.getRole(userBean).equalsIgnoreCase("manager")){
            
            RequestDispatcher rd = request.getRequestDispatcher("/viewOrder.jsp");
            rd.forward(request, response);
            }
            
            
        }  else {
                  
              RequestDispatcher rd = request.getRequestDispatcher("/login.jsp?msg1=Invalid UserName or password");
              rd.forward(request, response);
           }
                   
        
       
        
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        verifyUser(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        verifyUser(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}

/*
 * Customer.java
 *
 * Created on December 25, 2009, 7:10 PM
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
public class Customer extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        CustomerBean CB = new CustomerBean();
        DataBase DB     = new DataBase();
        
       /* out.println(request.getParameter("customer_name").trim()+"<br/>");
        out.println(request.getParameter("address").trim()+"<br/>");
        out.println(request.getParameter("email").trim()+"<br/>");
        out.println(request.getParameter("phone").trim()+"<br/>");*/
        
        CB.setCustomer_name(request.getParameter("customer_name").trim());
        CB.setAddress(request.getParameter("address").trim());
        CB.setEmail(request.getParameter("email").trim());
        CB.setPhone(request.getParameter("phone").trim());
        CB.setPassword(request.getParameter("password").trim());
        
        DB.insert_customer(CB);
        
        RequestDispatcher rd = request.getRequestDispatcher("/customer.jsp?msg=You have successfully registered");
        rd.forward(request,response);
        
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}

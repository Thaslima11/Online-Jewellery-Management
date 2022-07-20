/*
 * Order.java
 *
 * Created on February 4, 2010, 2:01 AM
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
public class Order extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ProductBean pb = new ProductBean();
        DataBase db = new DataBase();
        String varForm = request.getParameter("form");
        System.out.println("form "+varForm);
        
        pb.setUser_name(request.getParameter("customer_name").trim());
        pb.setItem(request.getParameter("item").trim());
        pb.setOrder(request.getParameter("item_model").trim());
        pb.setPrice(Long.parseLong(request.getParameter("price").trim()));
        
        if(varForm.equals("cash")){
            
            db.insertOrder(pb);
            RequestDispatcher rd = request.getRequestDispatcher("/orderby_cash.jsp?msg1= U have Successfully Ordered...\nU must purchase with in One week  ");
            rd.forward(request,response);
        }
        if(varForm.equals("credit")){
            pb.setCredit(Long.parseLong(request.getParameter("credit").trim()));
            pb.setBank(request.getParameter("bank").trim());
            db.insertOrder_credit(pb);
            RequestDispatcher rd = request.getRequestDispatcher("/orderby_credit.jsp?msg1=U have Successfully Ordered and Delivered with in Three Days...");
            rd.forward(request,response);
             
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

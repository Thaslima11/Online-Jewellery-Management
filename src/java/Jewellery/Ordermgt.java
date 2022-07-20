/*
 * Ordermgt.java
 *
 * Created on February 4, 2010, 4:46 AM
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
public class Ordermgt extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        DataBase UD = new DataBase();
        ProductBean OB = new ProductBean();


        String order = null;
        String status= null;
        String order1 = null;
        String order_credit =null, credit_status=null ,order_credit1=null; 
        
        

        order = request.getParameter("order");
        status = request.getParameter("status");
        order1 = request.getParameter("order1");
        order_credit = request.getParameter("ordC");
        credit_status = request.getParameter("sta");
        order_credit1 = request.getParameter("ordC1");
		
		System.out.println(status);

                if (order != null)        {
                    RequestDispatcher rd2=request.getRequestDispatcher("/viewOrder.jsp");
                    request.setAttribute("ORDERMGT",UD.getOrder(order));
                    rd2.forward(request,response);
                }

	    if ( status != null )   {
                    OB = UD.getOrder(order1);
                    System.out.println(OB.getOrder_id());
                    UD.changeStatus(OB,status);
                    System.out.println("status Changed");                
                    RequestDispatcher rd2=request.getRequestDispatcher("/viewOrder.jsp");
                    rd2.forward(request,response);
            }
                if (order_credit != null)   {
                    request.setAttribute("ORDERMGTC",UD.getOrder_credit(order_credit));
                    RequestDispatcher rd2=request.getRequestDispatcher("/viewCredit_order.jsp");
                    rd2.forward(request,response);
                }
                if ( credit_status != null )   {
                    OB = UD.getOrder(order_credit1);
                    System.out.println(OB.getOrder_id());
                    UD.changeStatusCredit(OB,credit_status);
                    System.out.println("credit_status Changed");                
                    RequestDispatcher rd2=request.getRequestDispatcher("/viewCredit_order.jsp");
                    rd2.forward(request,response);
                }
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

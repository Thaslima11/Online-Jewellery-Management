/*
 * DataBase.java
 *
 * Created on December 25, 2009, 3:01 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package Jewellery;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.text.*;
import java.util.*;
/**
 *
 * @author uniq
 */
public class DataBase {
    
    /** Creates a new instance of DataBase */
    
    private Connection con = null;
    
    public DataBase() {
    }
    
    
    public Connection getConnection() throws ClassNotFoundException,SQLException {
        
        /*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:Jewellery");*/
        
       
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Jewellery","root","admin" );
        
        return con;
        
    }
    
    
  public void insert_customer(CustomerBean CB)  {
        Statement stmt =null;
        Connection con = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        String creation_date= sdf.format(date);
        System.out.println("cusstomerCreation"+creation_date);
        
        try {
            con =getConnection();
            String query ="insert into customer" +
                    " (customer_name" +
                    ",password" +
                    ",address" +
                    ",phone" +
                    ",email" +
                    ",creation_date" +
                    ")values( " +
                    "'"+CB.getCustomer_name()+"'" +
                    ",'"+CB.getPassword()+"'" +
                    ",'"+CB.getAddress()+"'" +
                    ",'"+CB.getPhone()+"'" +
                    ",'"+CB.getEmail()+"'" +
                    ",'"+creation_date+"'"+
                    " )";
            String user_query="insert into user(user_name, password, role) values('"+CB.getCustomer_name()+"','"+CB.getPassword()+"','customer')";
            stmt = con.createStatement();
            stmt.executeUpdate(query);
            System.out.println("Customer_info Inserted Suceesfully");  
            stmt.executeUpdate(user_query);
            System.out.println("user Created");
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     
    }
  
  
  
  public boolean is_validUser(UserBean UB)  {
      boolean is_valid_password=false;
      Statement stmt = null;
      Connection con = null;
      ResultSet resultset =null;
      try{
         con= getConnection(); 
          String query ="select  password from user where user_name='"+UB.getUser_name()+"' ";
          stmt = con.createStatement();
          resultset=stmt.executeQuery(query);
          while(resultset.next()){
              
          String password= resultset.getString(1);
         /* System.out.println(password+" from database");
          System.out.println(UB.getPassword()+"from user");*/
          
          if(UB.getPassword().equals(password))
              is_valid_password=true; 
          
          }
      }catch(SQLException ex)   {
          
          ex.printStackTrace();
      }
      catch(ClassNotFoundException cnf) {
            System.out.println(""+cnf);
        }
     catch(Exception e1) {
            System.out.println(""+e1);
        }
      finally{
          try{
              stmt.close();
              resultset.close();
              con.close();
          }catch(SQLException ex){
              
              System.out.println(ex);
          }
      }
      
    return is_valid_password;
      
  }// End of is_validUser
  public String getRole(UserBean UB) {
      Statement stmt = null;
      Connection con = null;
      ResultSet resultset =null;
      String role="";
      try{
          con =getConnection();          
          String query ="select  role from user where user_name='"+UB.getUser_name()+"' ";
          stmt = con.createStatement();
          resultset=stmt.executeQuery(query);
          while(resultset.next()){
              role =resultset.getString(1);
          }
         
      }catch(SQLException ex)    {
          ex.printStackTrace();
      }
      catch(ClassNotFoundException ex){
          System.out.println(ex);
      }catch (Exception ex) {
          System.out.println(ex);
              
          
      }
      
       
      finally{
          try{
              stmt.close();
              resultset.close();
              con.close();
          }catch(Exception ex){
              
              System.out.println(ex);
          }
      }
      
      return role;
   
  }
    public void insertOrder_credit(ProductBean pb){
         Statement stmt =null;
        Connection con = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        String creation_date= sdf.format(date);
        System.out.println(creation_date);
        String status ="purchased";
        
        try {
            con =getConnection();
           // String query ="insert into order_details(customer_name,order_name,price,creation_date) values('"+pb.getUser_name()+"' ,'"+pb.getChain1()+"','"+pb.getPrice()+"','"+creation_date+"'); ";
          String qury ="INSERT INTO jewellery.orderby_credit 	(customer_name, item_name, item_model, 	price, 	credit_card, 	bank, 	creation_date,status)values ('"+pb.getUser_name()+"','"+pb.getItem()+"', '"+pb.getOrder()+"','"+pb.getPrice()+"',"+pb.getCredit()+",'"+pb.getBank()+"','"+creation_date+"','"+status+"');";

            System.out.println(qury+"  "+pb.getOrder()+"  "+pb.getPrice());
            stmt = con.createStatement();
            stmt.executeUpdate(qury);
            System.out.println("OrderBY Credit Inserted Suceesfully");
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     
        
       
    }
    
      public void insertOrder(ProductBean pb){
         Statement stmt =null;
        Connection con = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        
        String creation_date= sdf.format(date);
        System.out.println(creation_date);
        String status ="ordered";
        
        try {
            con =getConnection();
            // String query ="insert into order_details(customer_name,order_name,price,creation_date) values('"+pb.getUser_name()+"' ,'"+pb.getChain1()+"','"+pb.getPrice()+"','"+creation_date+"'); ";
            String qury ="INSERT INTO jewellery.orderby_cash(customer_name,item_name,item_model,price, status,creation_date )VALUES('"+pb.getUser_name()+"','"+pb.getItem()+"','"+pb.getOrder()+"','"+pb.getPrice()+"','"+status+"','"+creation_date+"');";

            System.out.println(qury+"  "+pb.getOrder()+"  "+pb.getPrice());
            stmt = con.createStatement();
            stmt.executeUpdate(qury);
            System.out.println("OrderBY Cash Inserted Suceesfully");
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     
        
       
    }
      
public ArrayList   getOrderDetils()  {

    Statement stmt=null;
    ResultSet rs=null;
    ArrayList arr=new ArrayList();
   
    try

    {
    	getConnection();
        stmt = con.createStatement();
	String query="SELECT order_id, customer_name,item_name,item_model,price,status,creation_date	 FROM 	jewellery.orderby_cash ;";
	rs =  stmt.executeQuery(query);
        System.out.println("Orders selected");
        while(rs.next())  {
            ProductBean  pb = new ProductBean() ;
            pb.setOrder_id(rs.getInt(1));
            pb.setUser_name(rs.getString(2));
            pb.setItem(rs.getString(3));
            pb.setOrder(rs.getString(4));
            pb.setPrice(rs.getInt(5));
            pb.setStatus(rs.getString(6));
            pb.setCreation_date(rs.getString(7));
            arr.add(pb); 
        }
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     	return arr ;
    }
    
    public ProductBean   getOrder(String Order)  {

    Statement stmt=null;
    ResultSet rs=null;
    ArrayList arr=new ArrayList();
    ProductBean  pb = new ProductBean() ;
    try

    {
    	getConnection();
        stmt = con.createStatement();
	String query="SELECT order_id, customer_name,item_name,item_model,price,status,creation_date	 FROM 	jewellery.orderby_cash where order_id ="+Order+";";
	rs =  stmt.executeQuery(query);
        System.out.println("Order id selected");
        while(rs.next())  {
            pb.setOrder_id(rs.getInt(1));
            pb.setUser_name(rs.getString(2));
            pb.setItem(rs.getString(3));
            pb.setOrder(rs.getString(4));
            pb.setPrice(rs.getInt(5));
            pb.setStatus(rs.getString(6));
            pb.setCreation_date(rs.getString(7));
            //arr.add(pb); 
        }
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     	return pb ;
    }
   
 public void changeStatus(ProductBean pb,String status)   {
   	Statement stmt=null;
    
   try
   {
        getConnection();
    	String query="UPDATE orderby_cash SET status = '"+status+"' where order_id="+pb.getOrder_id()+";";
        stmt= con.createStatement();
        stmt.executeUpdate(query);   
         System.out.println("status Updated ");
   }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }  
 }
 
 
 public ArrayList   getOrderDetils_credit()  {

    Statement stmt=null;
    ResultSet rs=null;
    ArrayList arr=new ArrayList();
   
    try

    {
    	getConnection();
        stmt = con.createStatement();
	String query="SELECT 	order_id, customer_name, item_name, item_model, price, credit_card, bank, status, creation_date FROM jewellery.orderby_credit ;";
	rs =  stmt.executeQuery(query);
        System.out.println("Credit Orders selected");
        while(rs.next())  {
            ProductBean  pb = new ProductBean() ;
            pb.setOrder_id(rs.getInt(1));
            pb.setUser_name(rs.getString(2));
            pb.setItem(rs.getString(3));
            pb.setOrder(rs.getString(4));
            pb.setPrice(rs.getInt(5));
            pb.setCredit(rs.getLong(6));
            pb.setBank(rs.getString(7));
            pb.setStatus(rs.getString(8));
            pb.setCreation_date(rs.getString(9));
            arr.add(pb); 
        }
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     	return arr ;
    }
    
    public ProductBean   getOrder_credit(String Order)  {

    Statement stmt=null;
    ResultSet rs=null;
    ArrayList arr=new ArrayList();
    ProductBean  pb = new ProductBean() ;
    try

    {
    	getConnection();
        stmt = con.createStatement();
	String query="SELECT *	 FROM 	jewellery.orderby_credit where order_id ="+Order+";";
	rs =  stmt.executeQuery(query);
        System.out.println("Cerdit Order id selected");
        while(rs.next())  {
          pb.setOrder_id(rs.getInt(1));
            pb.setUser_name(rs.getString(2));
            pb.setItem(rs.getString(3));
            pb.setOrder(rs.getString(4));
            pb.setPrice(rs.getInt(5));
            pb.setCredit(rs.getLong(6));
            pb.setBank(rs.getString(7));
            pb.setStatus(rs.getString(8));
            pb.setCreation_date(rs.getString(9));
            //arr.add(pb); 
        }
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }     	return pb ;
    }
   
 public void changeStatusCredit(ProductBean pb,String status)   {
   	Statement stmt=null;
    
   try   {
        getConnection();
    	String query="UPDATE jewellery.orderby_credit SET status = '"+status+"' where order_id="+pb.getOrder_id()+";";
        stmt= con.createStatement();
        stmt.executeUpdate(query);   
        System.out.println("status Credit Order Updated ");
        }catch(ClassNotFoundException e){
                e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
            stmt.close();
            con.close();
            }catch(SQLException ex){
                ex.printStackTrace();                
            }
        }  
 }

 
 
}   
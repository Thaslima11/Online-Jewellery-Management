<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Order Form</title>
<link  media="all" href="css/stylesheet.css" rel="stylesheet"  type="text/css"/>
<script language="javascript">
    
   /* function byCash() {
    <% //Jewellery.DataBase db = new Jewellery.DataBase();  
      // Jewellery.ProductBean pb= new Jewellery.ProductBean();
          //  db.insertOrder(pb);
       %>
    alert('you should purchase within one week');
    
    }*/
    
</script>

 </head>

<body  bgcolor="#019AFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" height="550"><table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td align="center" class="studdetailshead">ONLINE JEWELLERY MANAGEMENT SYSTEM</td>
        <td class="studdetailshead"><h4><a href="login.jsp">LOGIN</a>|<a href="product.jsp">PRODUCT</a></h4></td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td>
      </tr>
      <tr>
        <td align="left" class="studdetailshead">Order Registration  </td>
       
      </tr>

      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="350" class="studdetailsfont" style="background-image:url(img/bgforbox.png); background-repeat:repeat; border:1px solid #fff;" border="0" cellspacing="8" cellpadding="0">
  <tr>
      <td> Following <%=request.getParameter("item")%> Chossed BY Customer :
      <% if(session.getAttribute("USER")!=null) {
          Jewellery.UserBean  ub =(Jewellery.UserBean)session.getAttribute("USER");
         out.print(ub.getUser_name());
        %>
          <td></tr>  
   <tr><td><%=request.getParameter("item")%> Model</td> <td> <%=request.getParameter("name")%></td></tr>
   <td> <%=request.getParameter("item")%> price</td><td> <%=request.getParameter("price")%> </td></tr>
   <% 
    Jewellery.DataBase db = new Jewellery.DataBase();
    Jewellery.ProductBean pb= new Jewellery.ProductBean();
    pb.setOrder(request.getParameter("name"));
    pb.setPrice(Integer.parseInt(request.getParameter("price").trim()));
    pb.setItem(request.getParameter("item").trim());
    pb.setUser_name(ub.getUser_name());
    
    //db.insertOrder(pb);
    session.setAttribute("ORDER" , pb);
    %> <tr><td><td> </tr> 
    <tr>
        <td> <font color="#040066"><b><big>Cash :</big></b> <INPUT TYPE="radio" NAME="Cash" VALUE="cash" ID="cash"  onClick="window.open('http://localhost:8084/OnLineJewelleryMgt/orderby_cash.jsp','window')"></font> </td>
        <td><font color="#040066"><big><b>Credit :</b> </big><INPUT TYPE="radio" NAME="Cash" VALUE="credit" ID="credit" onClick="window.open('http://localhost:8084/OnLineJewelleryMgt/orderby_credit.jsp','dow')"></font>  </td>


   
        
    </tr>
    
   
  <%  } %>
   
   
     
                   
 
  <tr>
           
    </tr>
</table>
          <div style="background-image:url(img/bgforbox.png); background-repeat:repeat; width:250px;"> <h3 >
                  <% if(request.getParameter("msg")!=null)
                  out.println(request.getParameter("msg"));
                  
                  %>
          </h3></div>
          
      </td>
  </tr>
</table>
</td>
  </tr>
</table>

</body>
</html>

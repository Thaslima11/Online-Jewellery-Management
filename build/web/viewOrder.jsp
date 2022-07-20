<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Order Details</title>
<link  media="all" href="css/stylesheet.css" rel="stylesheet"  type="text/css"/>
 </head>

<body  bgcolor="#019AFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" height="550"><table width="90%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td align="center" class="studdetailshead">ONLINE JEWELLERY MANAGEMENT SYSTEM</td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td>
      </tr>
      <tr>
        <td align="left" class="studdetailshead">Order Information By Cash  </td>
        <td align="right" class="studdetailshead"><a href="login.jsp">login</a> | <a href="viewCredit_order.jsp">OrderByCredit<a></td></td>
      </tr>

      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="350" class="studdetailsfont" style="background-image:url(img/bgforbox.png); background-repeat:repeat; border:1px solid #fff;" border="0" cellspacing="8" cellpadding="0">
  <tr>
      <td>  Ordered Details :
     <div align="center">
   
   <!--   <table  id="tab1"  style="display:none;" width="738" border="0" bgcolor="#ffffff" cellspacing="1" cellpadding="0">-->
    <table  id="tab1"  width="738" border="1" bgcolor="#ffffff" cellspacing="1" cellpadding="0">
          <tr class="buttonm" bgcolor="#000000">
              <td width="83"><div align="center" style="color:#ffffff;"><b>Customer_name</b> </div></td>
              <td width="84"><div align="center" style="color:#ffffff;"><b>Order_item</b></div></td>
               <td width="84"><div align="center" style="color:#ffffff;"><b>Item_model</b></div></td>
              <td width="169"><div align="center" style="color:#ffffff;"><b>Price</b></div></td>
              <td width="169"><div align="center" style="color:#ffffff;"><b>Order_Date</b></div></td>
               <td width="169"><div align="center" style="color:#ffffff;"><b>Status</b></div></td>
             
          </tr>  
            
   <% 
    Jewellery.DataBase db = new Jewellery.DataBase();
    //Jewellery.ProductBean pb= new Jewellery.ProductBean();
     java.util.ArrayList arr1 =   db.getOrderDetils();
    
	
	for( int i=0;i<arr1.size();i++)
	{
	Jewellery.ProductBean pb = (Jewellery.ProductBean)arr1.get(i);
	%>
    <tr class="table_bluecell">
    <td><%=pb.getUser_name()%></td>
    <td><%=pb.getItem()%></td>
    <td><%=pb.getOrder()%></td>
    <td><%=pb.getPrice()%></td>
    <td><%=pb.getCreation_date()%></td>
   <td><% if(pb.getStatus().equals("ordered")||pb.getStatus().equals("waiting")) { %><a href='*.Ordermgt?order=<%=pb.getOrder_id()%>'><%=pb.getStatus()%></a><% } else { %><%=pb.getStatus()%><% }%></td>
  </tr>
<% }%>

    
  </tr>

   
     
                   
 
  <tr>
           
    </tr>
</table>
         
      </td>
  </tr>
</table><br><br>
</td>
  </tr>
  <% if(request.getAttribute("ORDERMGT") != null)

{ 
   Jewellery.ProductBean pb =( Jewellery.ProductBean) request.getAttribute("ORDERMGT");
  
   %>
 <p class="alert style1"> </p>
 <form name="form1" method="post" action="*.Ordermgt" >
 <input name="order1" type="hidden" value="<%=pb.getOrder_id()%>">
 <table width="718" border="0" bgcolor="#000000" cellspacing="1" cellpadding="5">
   <tr bgcolor="#ffffff">
     <td width="207" class="buttonm">Order ID </td>
     <td width="495" class="table_bluecell" ><%=pb.getOrder_id()%></td>
   </tr>
   <tr bgcolor="#ffffff">
     <td class="buttonm">Customer Name</td>
     <td class="table_bluecell"><%=pb.getUser_name()%></td>
   </tr>
   <tr bgcolor="#ffffff">
     <td class="buttonm">Item</td>
     <td class="table_bluecell"><%=pb.getItem()%></td>
   </tr>
   <tr bgcolor="#ffffff">
     <td class="buttonm">Item_model</td>
     <td class="table_bluecell"><%=pb.getOrder()%></td>
   </tr>
   <tr bgcolor="#ffffff">
     <td class="buttonm">Price</td>
     <td class="table_bluecell"><%=pb.getPrice()%></td>
   </tr>
   <tr bgcolor="#ffffff">
     <td class="buttonm">Creation_Date</td>
     <td class="table_bluecell"><%=pb.getCreation_date()%></td>
   </tr>
  
   <tr  bgcolor="#ffffff">
     <td class="buttonm">Status</td>
     <td class="table_bluecell">
       <select name="status" >
         <option selected>Delivered</option>
         <option>Rejected</option>
         <option>waiting</option>
       </select>
       <input type="submit" name="Submit" value="Submit">
     </td>
   </tr>
</table>
</form>
<% 
    } %>
  
  
</table>

</body>
</html>

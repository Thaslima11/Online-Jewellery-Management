<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Credit Form</title>
<link  media="all" href="css/stylesheet.css" rel="stylesheet"  type="text/css"/>
 
   
   <script type="text/javascript">
       
       
       function validate_order(){
           
            var i;
            var l= document.getElementById("order_credit").length; 
            if(document.getElementById("customer_name").value=="") {
                alert("fill the customer_name  field ");
                return false; 
            }
            if(document.getElementById("item").value=="") {
                alert("fill the item field ");
                return false; 
            }
             if(document.getElementById("item_model").value=="") {
                alert("fill the item_model  field ");
                return false; 
             }
            if(document.getElementById("price").value=="") {
                alert("fill the price  field ");
                return false;
            }
            if(document.getElementById("credit").value=="")  {
                 alert("fill the credit  field");
                 return false;
                }     
            if(document.getElementById("bank").value=="") {
                alert("fill the bank  field ");
                return false; 
                 }
           
            for(i=0; i<l-2;i++)
            {   
            if (document.getElementById("userReg").elements[i].value=="") {
                    alert("fill all the fields");
                    return false;
            }     
     
     }
     
     return true;
}
        
       
    </script>
    

</head>

<body  bgcolor="#019AFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" height="550"><table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td align="right" class="studdetailshead">ONLINE JEWELLERY MANAGEMENT SYSTEM</td>
       
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td> <td class="studdetailshead"><h4><a href="login.jsp">LOGIN</a>|<a href="product.jsp">PRODUCT</a></h4></td>
      </tr>
      <tr>
        <td align="left" class="studdetailshead">OrderBy Credit</td>
      </tr>

      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="350" class="studdetailsfont" style="background-image:url(img/bgforbox.png); background-repeat:repeat; border:1px solid #fff;" border="0" cellspacing="8" cellpadding="0">
  <tr>
      
       <% if (session.getAttribute("ORDER")!=null){ 
            
             Jewellery.ProductBean pb = ( Jewellery.ProductBean )session.getAttribute("ORDER");
            
            %>
         
            <form name="order_credit"  id ="order_credit" action="Order" method="post"  >
                  <td>Customer Name</td>
            <td>:</td>
            
            <td>
                    <input type="text" name="customer_name" id="customer_name"  value= "<%=pb.getUser_name()%>"/>
            </td>
        </tr>
        
        
        <tr>
            <td>Item Name</td>
            <td>:</td>
            <td><input type="text" name="item" id="item"   value= "<%=pb.getItem()%>"/></td>
        </tr>
        <tr>
            <td>Item Model</td>
            <td>:</td>
            <td><input type="text" name="item_model" id="item_model"  value= "<%=pb.getOrder()%>"/></td>
        </tr>
        
        <tr>
            <td>Price</td>
            <td>:</td>
            <td><input type="text" name="price"  id="price"  value= "<%=pb.getPrice()%>"  /></td>
        </tr>  
        <tr>
            <td>CreditCard Number </td>
            <td>:</td>
            <td><input type="text" name="credit" id="credit" /></td>
        </tr>
        <tr>
            <td>Bank</td>
            
            <td>:</td>
            <td><input type="text" name="bank"  id="bank"/></td>>
            <input type="hidden" name="form" value="credit"  id="form"/>
            <% } %>
        </tr>
        
              
        <td colspan="3" align="center"><input type="submit"  value="order"  onclick="return validate_order();" style="background-color:#535353; border:1px solid #000;" />
        
        <input type="reset" value="Clear" style="background-color:#535353; border:1px solid #000;" />
        </form> 
    </tr>
</table>
          <div style="background-image:url(img/bgforbox.png); background-repeat:repeat; width:250px;"> <h3>
                  <% if(request.getParameter("msg1")!=null)
                  out.println(request.getParameter("msg1"));
                  
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

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>purchase</title>
<link  media="all" href="css/stylesheet.css" rel="stylesheet"  type="text/css"/>
<script type="text/javascript">      
                function validate_ring(){
               
                    //alert("hai");
                   
                   if (document.getElementById("delq").value=="") {
                    alert("fill the QustNumber to Delete");
                    return false;
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
        <td align="center" class="studdetailshead">ONLINE JEWELLERY MANAGEMENT SYSTEM</td>
        <td  class="studdetailshead" ><h4><a href="login.jsp">LOGIN</a>|<a href="product.jsp">PRODUCT</a></h4></td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td>
      </tr>
      <tr>
        <td align="right" class="studdetailshead">Purchase Rings</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="700" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
      <form action=""  name="ring"> 
      <tr bgcolor="#FFFFFF">
          
        <td width="139" align="left" bgcolor="#FFFFFF"><img src="img/r11.jpg" width="136" height="119" /></td>
        <td width="416" align="center" bgcolor="#FFFFFF" class="studdetailsfont">A flat wedding band basically consists of a strip of metal that is bent around into a loop and joined where the ends meet</td>
    <td width="145" align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name= Flat_Wedding_Model&price=12000&item=Ring">ClickToOrder </a>
          $12000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="left" bgcolor="#FFFFFF"><img src="img/r22.jpg" width="124" height="138" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">Diamonds, of the same cut and size, set in one row all around the ring.  The stones are usually round or square, and the setting is usually  either claws or a channel setting. When the stones do not continue  around the entire ring, but stop halfway around the finger, it is  called a half-eternity ring.</td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name= Diamond_Ring&price=15000&item=Ring">ClickToOrder </a>
          $15000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="left" bgcolor="#FFFFFF"><img src="img/r33.jpg" width="139" height="113" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">rings with a group of stones in a cluster setting, forming the focal  point of the ring. The cluster setting usually consists of one large  stone (usually round or oval) in the center surrounded with several  smaller stones.</td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name= Ring_Cluster_model&price=7000&item=Ring">ClickToOrder </a>
          $7000</td>
      </tr>
      
    </form>
    </table>
   </td>
  </tr>
</table>
</td>
  </tr>
</table>

</body>
</html>

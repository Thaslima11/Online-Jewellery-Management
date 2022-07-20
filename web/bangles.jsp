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
        <td align="right" class="studdetailshead">Purchase Bangles </td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="700" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
        <form action="Bangles"  name="bangles">
      <tr bgcolor="#FFFFFF">
        <td width="139" align="center" bgcolor="#FFFFFF"><img src="img/bangles11.jpg" width="122" height="124" /></td>
        <td width="416" align="center" bgcolor="#FFFFFF" class="studdetailsfont">WEDDING WEAR BANGLES<br/ </td>
        <td width="145" align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name= Wedding_wear_model&price=12000&item=Bangles">ClickToOrder </a>
          $12000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="center" bgcolor="#FFFFFF" style=" padding:4px;"><img src="img/bangles22.jpg" width="124" height="124" style="border:1px solid #000000;" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">

    THIN GOLD BANGLES. BEST FOR TEENS <br/>    </td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name=Thin_Gold_Model&price=12000&item=Bangles">ClickToOrder </a>
          $15000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="center" bgcolor="#FFFFFF"><img src="img/bangles33.jpg" width="127" height="130" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">THICK DECORATED BANGLES. </td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href="saveOrder.jsp?name=Thick_Decorated&price=12000&item=Bangles">ClickToOrder </a>
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

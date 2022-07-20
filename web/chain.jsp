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
 function validate_chain(){
               
                   alert("select Check Box");
                   
                  /* if (document.chain.chain1.checked) {
                    alert("select the CheckBox");;
                    return false;
                    }*/
                   
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
          <td class="studdetailshead" ><h4><a href="login.jsp">LOGIN</a>|<a href="product.jsp">PRODUCT</a></h4></td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td>
      </tr>
      <tr>
        <td align="right" class="studdetailshead">Purchase Chains </td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
     <td align="center"><table width="700" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
       <form action="" name="chain">
      <tr bgcolor="#FFFFFF">
        <td width="139" align="center" bgcolor="#FFFFFF"><img src="img/chain1.jpg" width="116" height="116" /></td>
        <td width="416" align="center" bgcolor="#FFFFFF" class="studdetailsfont">GOLD PARTY WEAR CHAINS </td>
        <td width="145" align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href='saveOrder.jsp?name=GOLD_WEAR_CHAINS&price=12000&item=Chain'>ClickToOrder </a>
          $12000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="center" bgcolor="#FFFFFF"><img src="img/chain2.jpg" width="120" height="120" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">

    SWEET HEART GOLD CHAIN.<br/>
    Make your sweet heart Sizzle with an Heart Shaped Gold Pendent and chain.<br/></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href='saveOrder.jsp?name=Heart_Shaped_PENDANT&price=15000&item=Chain'>ClickToOrder </a>
          $15000</td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="center" bgcolor="#FFFFFF"><img src="img/chain3.jpg" width="114" height="114" /></td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont">CHAIN WITH PENDANT FOR MEN </td>
        <td align="center" bgcolor="#FFFFFF" class="studdetailsfont"><a href='saveOrder.jsp?name=CHAIN_WITH_PENDANT&price=7000&item=Chain'>ClickToOrder </a>
          $7000</td>
           </tr>
       
    </form>
      </tr>
    </table>
    <label></label></td>
  </tr>
</table>
</td>
  </tr>
</table>

</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login </title>
<style type="text/css">

body
{
background-image:url(img/bg1.png);
background-repeat:no-repeat;
background-position:top;
background-attachment:fixed;
}
.studdetailsfont
{
font-family:Verdana, Arial, Helvetica, sans-serif;
font-size:11px;
font-weight:bold;
color:#212121;
}
.studdetailshead
{
font-family:Verdana, Arial, Helvetica, sans-serif;
font-size:15px;
font-weight:bold;
color:#000;
}
    .style1 {color: #FFFFFF}
</style>
</head>

<body  bgcolor="#019AFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" height="550"><table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right" class="studdetailshead">ONLINE JEWELLERY MANAGEMENT SYSTEM</td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" class="studdetailshead">Login</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="300" class="studdetailsfont" style="background-image:url(img/bgforbox.png); background-repeat:repeat; border:1px solid #fff;" border="0" cellspacing="8" cellpadding="0">
  <tr>
          <form name="login" id="login" action="verify.user" method="post" >
          <td>Username</td>
          <td>:</td>
          <td><label>
                  <input type="text" name="user_name" />
          </label></td>
      </tr>
      <tr>
          <td>Password</td>
          <td>:</td>
          <td><input type="password" name="password" /></td>
      </tr>
      
      <tr>
      <td colspan="3" align="center"><input type="submit"  value="login" style="background-color:#535353; border:1px solid #000;" />
          <input type="reset"  value="Clear" style="background-color:#535353; border:1px solid #000;" />
            <a href ="customer.jsp"><h4>new user sign up</h4><a>
          </form>
      </td>
    
    </tr>
    <% if(request.getParameter("msg1")!=null)
          out.println(request.getParameter("msg1"));
          
          %>
</table>
      </td>
  </tr>
</table>
</td>
  </tr>
</table>

</body>
</html>

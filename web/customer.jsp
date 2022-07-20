<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Registration Form</title>
<link  media="all" href="css/stylesheet.css" rel="stylesheet"  type="text/css"/>

       
<style type="text/css">

body
{
background-image:url(img/bg1.png);
background-repeat:no-repeat;
background-position:top;
background-attachment:fixed;
}
</style>
 
   
   <script type="text/javascript">
       
       
       function validate_customer(){
           
            var i;
            var l= document.getElementById("userReg").length; 
          /*  if(document.getElementById("customer_name").value=="") {
                alert("fill the customer_name  field ");
                return false; 
            }
            if(document.getElementById("password").value=="") {
                alert("fill the password field ");
                return false; 
            }
            if(document.getElementById("confirm_password").value=="") {
                alert("fill the confirm_password  field ");
                return false;
            }
            if(document.getElementById("address").value=="")  {
                 alert("fill the address  field");
                 return false;
                }     
            if(document.getElementById("phone").value=="") {
                alert("fill the phone  field ");
                return false; 
                 }
            if(document.getElementById("email").value=="") {
                alert("fill the email  field ");
                return false; 
             }*/
            for(i=0; i<l-2;i++)
            {   
            if (document.getElementById("userReg").elements[i].value=="") {
                    alert("fill all the fields");
                    return false;
            }     
     
     }
     
     return true;
}
          function processNumber(i ) {
    try {
        var inpVal = parseInt(i, 10);
        if (isNaN(inpVal)) {
            var msg = "Please enter  number only.";
            var err = new Error(msg);
            if (!err.message) {
                err.message = msg;
            }
            throw err;
        }
    } catch (e) {
        alert(e.message);
        inputField.focus();
        inputField.select();

    }
}
        function checkPassword() {
            var pass =document.getElementById("password").value;
            var confim_pass=document.getElementById("confirm_password").value;
            if(pass==confim_pass)
                return true;
            else {
            alert("Your password does not match");
            document.getElementById("password").focus();
            return false;
            }
        }     
        
    </script>
    

</head>

<body  bgcolor="#019AFF"  >
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
        <td align="right" class="studdetailshead">New User Registration </td>
        <td align="right" class="studdetailshead"><a href="login.jsp">"click here to go login"</a> </td>
      </tr>

      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      
  <tr>
    <td align="center"><table width="350" class="studdetailsfont" style="background-image:url(img/bgforbox.png); background-repeat:repeat; border:1px solid #fff;" border="0" cellspacing="8" cellpadding="0">
  <tr>
            <form name="userReg"  id ="userReg" action="user.reg" method="post"  >
                  <td>Username</td>
            <td>:</td>
            
            <td>
                    <input type="text" name="customer_name" id="customer_name" />
            </td>
        </tr>
        
        
        <tr>
            <td>Password</td>
            <td>:</td>
            <td><input type="password" name="password" id="password" /></td>
        </tr>
        
        <tr>
            <td>ConfirmPassword</td>
            <td>:</td>
            <td><input type="password" name="confirm_password"  id="confirm_password"  onblur="return checkPassword();" /></td>
        </tr>  
        <tr>
            <td>Address </td>
            <td>:</td>
            <td><input type="text" name="address" id="address" /></td>
        </tr>
        <tr>
            <td>Phone</td>
            
            <td>:</td>
            <td><input type="text" name="phone"  id="phone" maxlength="10" onblur="processNumber(this.value)"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td>:</td>
            <td><input type="text" name="email" id="email" /></td>
            
        </tr>
        
        <td colspan="3" align="center"><input type="submit"  value="Create user"  onclick="return validate_customer();" style="background-color:#535353; border:1px solid #000;" />
        
        <input type="reset" value="Clear" style="background-color:#535353; border:1px solid #000;" />
        </form> 
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



<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/login_style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <script type="text/javascript" src="js/jquery-latest.min.js"></script>
    
        <%@ page 
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>

  </head>

  <body>
    <%@ include file="menu.jsp" %> 
		
    	<div id="form-main" dir = "rtl">
  			<div id="form-div">
    		
    		<form class="form" id="form1"  role="form" method="post" action = "LoginController">
      			<p class="name" >
        			<input name="userName" required  oninvalid="this.setCustomValidity('لطفا نام کاربری را درست وارد کنید ')" type="text" class="feedback-input" placeholder="نام کاربری" id="name" />
      			</p>
      
      			<p class="password">
        			<input name="password"  type="password" class=" feedback-input" id="password" placeholder="رمز عبور" />
      			</p>
      
      			<div class = "row" >
					<div class = "col-md-6 col-sm-6 col-xs-6">
						<div class="submit">
        					<input type="submit" value="ورود" id="button-red"/>
      					</div>
					</div>
				</div>
      
    		</form>
    		<br>
    		<p>اگر حساب کاربری ندارید، برای ثبت نام <a href="register.jsp">اینجا</a> را کلیک کنید.</p>

  			</div>
  		</div>
    
    <script type="text/javascript">
    function validateUsername(fld) {
        var error = "";
        var illegalChars = /\W/; // allow letters, numbers, and underscores
     
        if (fld.value == "") {
            fld.style.background = 'Yellow';
            error = "You didn't enter a username.\n";
            alert(error);
            return false;
     
        } else if ((fld.value.length < 5) || (fld.value.length > 15)) {
            fld.style.background = 'Yellow';
            error = "The username is the wrong length.\n";
    		alert(error);
    		return false;
     
        } else if (illegalChars.test(fld.value)) {
            fld.style.background = 'Yellow';
            error = "The username contains illegal characters.\n";
    		alert(error);
    		return false;
     
        } else {
            fld.style.background = 'White';
        }
        return true;
    }</script>
  </body>
</html>
 

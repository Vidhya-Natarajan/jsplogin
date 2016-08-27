<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
 
        <form method="post" action="Registration.jsp">
                        First Name 
                         <input type="text" name="fname" value="" /><br>
                         Last Name
                        <input type="text" name="lname" value="" /><br>
                        Email    
                        <input type="text" name="email" value="" /><br>
                        User Name
                        <input type="text" name="uname" value=""/><br>
                        Password
                        <input type="password" name="pass" value="" /> <br> 
                        <input type="submit" value="Submit" /> <br>
                        <input type="reset" value="Reset" /> <br>
                     
                      Already registered!! <a href="Index.html">Login Here</a>
        </form>

</body>
</html>
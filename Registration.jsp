<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample",
            "vidhya", "vidhya");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into usrinfo(first_name, last_name, email, name, password, reg_date) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("welcome.jsp");
       out.print("Registration Successfull!"+"<a href='Index.html'>Go to Login</a>");
    } else {
        response.sendRedirect("Error.jsp");
    }
%>
</body>
</html>
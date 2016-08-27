<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String username=request.getParameter("un");
       String password=request.getParameter("pw");
       
    //    String username="vidhya";
    //    String password="vidhya12";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "vidhya", "vidhya");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from usrinfo where name='" + username + "' and password='" + password + "'");
        if (rs.next()) {
            session.setAttribute("userid",username);
            //out.println("welcome " + username);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("Home.jsp");
        } else {
            out.println("Invalid Username/Password <a href='index.html'>try again</a>");
        }
     
        %>
    </body>
</html>

<%-- 
    Document   : eventm
    Created on : 6 Oct, 2016, 12:28:35 AM
    Author     : vishnu bajpai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Manager Registration</title>
    </head>
    <body>
        <%
        String a =request.getParameter("user");
        String b=request.getParameter("pass");
        String c=request.getParameter("designation");
        String d=request.getParameter("coll");
        String e=request.getParameter("branch");
        try{
                
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           st.executeUpdate("insert into eventmanager values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
           
            response.getWriter().println("successfully registered");
           
                
        }catch(Exception e1)
        {}
       %>
    </body>
</html>

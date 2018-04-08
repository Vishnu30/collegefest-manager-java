<%-- 
    Document   : insert
    Created on : 16 Oct, 2016, 10:32:59 AM
    Author     : vishnu bajpai
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adding event.....</title>
    </head>
    <body>
          <%
        String a =request.getParameter("a1");
        String b=request.getParameter("a2");
        String c=request.getParameter("a3");
        String d=request.getParameter("a4");
        String e=request.getParameter("a5");
        try{
                
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/event", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           st.executeUpdate("insert into events values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
           
            response.getWriter().println("event successfully posted");
           
                
        }catch(Exception e1)
        {}
       %>
    </body>
</html>

<%-- 
    Document   : upgrade2
    Created on : 7 Oct, 2016, 9:24:56 PM
    Author     : vishnu bajpai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upgrading events</title>
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
           st.executeUpdate("update events set events='"+a+"',description='"+b+"',date='"+c+"',venue='"+d+"',volunteers='"+e+"' where volunteers='"+e+"'");
           
            response.getWriter().println("event successfully upgraded");
           
                
        }catch(Exception e1)
        {}
       %>
    </body>
</html>

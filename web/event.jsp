<%-- 
    Document   : event
    Created on : 6 Oct, 2016, 9:51:10 PM
    Author     : vishnu bajpai
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EVENTS page</title>
        
    </head>
    <body>
          <%
        String a =request.getParameter("n1");
        String b=request.getParameter("n2"); 
        try{  
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select *from eventmanager where username='"+a+"' and password='"+b+"'");
           if(rs.next()){
            response.sendRedirect("eventview.html");
           }
           else
           {
               JOptionPane.showMessageDialog(null, "invalid user");
           }
        }catch(Exception e)
        {}
       %>
    </body>
</html>

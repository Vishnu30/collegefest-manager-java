<%-- 
    Document   : eventcheck
    Created on : 16 Oct, 2016, 10:48:30 AM
    Author     : vishnu bajpai
--%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALL THE EVENTS ARE DISPLAYED HERE !</title>
    </head>
    <body>
       <sql:setDataSource var="dbcon"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/event" user="root" password=""/>
  <sql:query dataSource="${dbcon}" var="result">
        
       select *from events 
  </sql:query>
       <table border="2" cellspacing="1" cellpadding="2">
      <thead>
          <tr>
              <th>Event</th>
              <th>Description</th>
              <th>Date</th>
              <th>Venue</th>
          </tr>
      </thead>
      <tbody>
          <c:forEach var="row" items="${result.rows}">
               <tr>
                   <td><c:out  value="${row.events}"  /></td>
                   <td><c:out value="${row.description}"/></td>
                   <td><c:out value="${row.date}" /></td>
                   <td><c:out value="${row.venue}" /></td>
               </tr>
               </c:forEach>
      </tbody>
  </table>

    </body>
</html>
    </body>
</html>

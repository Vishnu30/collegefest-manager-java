
<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
              <th>Volunteers</th>
              <th>Upload FILES</th>
              <th>update</th>
          </tr>
      </thead>
      <tbody>
          <c:forEach var="row" items="${result.rows}">
               <tr>
                   <td><c:out  value="${row.events}"  /></td>
                   <td><c:out value="${row.description}"/></td>
                   <td><c:out value="${row.date}" /></td>
                   <td><c:out value="${row.venue}" /></td>
                   <td><c:out value="${row.volunteers}" /></td>
                   <td><a href="fileupload.html" >UPLOAD FILE</a> </td>
                   <td><a href="upgrade.jsp?name=${row.volunteers}">UPDATE</a></td>
               </tr>
               </c:forEach>
      </tbody>
  </table>

    </body>
</html>

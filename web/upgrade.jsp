<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upgrade events here</title>
        <style type="text/css">
            .n1{
                margin-left: 60px;
            }
            .n2{
                margin-left: 20px;
            }
            .n3{
                margin-left: 70px;
            }
            .n4{
                margin-left: 60px;
            }
            .n5{
                margin-left: 30px;
            }
            .n6{
                margin-left: 100px;
            }
        </style>
         </head>
         <body>
         <sql:setDataSource var="dbcon"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/event" user="root" password=""/>
  
<sql:query dataSource="${dbcon}" var="result">
       select *from events where volunteers=?;
       <sql:param value="${param.name}"/>
 </sql:query>
       
      <c:forEach var="row" items="${result.rows}">  
          
       <form action="http://localhost:9425/festmanager/upgrade2.jsp" method="post"/>
       
      Event            :<input type="text" class="n1" name="a1" value="${row.events}"/><br>
      <p>Description    :<textarea class="n2"  name="a2" cols="20" rows="4" >${row.description}</textarea></p>
      Date              :<input type="text"class="n3" value="${row.date}" name="a3" /><br><br>
      Venue             :<input type="text" class="n4"value="${row.venue}" name="a4" /><br><br>
      volunteers        :<input type="text" class="n5"value="${row.volunteers}" name="a5" /><br><br>
                        <input type="submit" class="n6"value="submit"/>
       </form>
                         </c:forEach>
    
        
    </body>
</html>

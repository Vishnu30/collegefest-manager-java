<%-- 
    Document   : fileview
    Created on : 16 Oct, 2016, 10:53:16 AM
    Author     : vishnu bajpai
--%>

<%

java.io.File file=new java.io.File("C:/Users/vishn/OneDrive/Documents/NetBeansProjects/collegefest/web/uploads/");

String f[]=file.list();

for(String a:f){
    out.println("<a href='uploads/"+a+"'>here</a><br>");
}

%>

 


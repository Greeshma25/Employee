<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <%
        String x=request.getParameter("id"); 
   
    
           try{  
Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/firstdb","root","root");  
         
           Statement st=con.createStatement();
           st.executeUpdate("delete from employee9 where ID="+x+"");
    response.sendRedirect("Employee1.jsp");
    con.close();
           }
           catch(Exception e)
           {
               e.printStackTrace();
           }
           %>
    </body>
</html>

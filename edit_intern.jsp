<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit_internal Page</title>
    </head>
    <body>
         <%
        String ID=request.getParameter("ID"); 
       String First_name=request.getParameter("First_name");
        String Last_name=request.getParameter("Last_name");
         String Address=request.getParameter("Address");
          String State=request.getParameter("State");
           String Country=request.getParameter("Country");
           String Zipcode=request.getParameter("Zipcode");
            String Department=request.getParameter("Department");
   
    
           try{  
Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/firstdb","root","root");  
         
           Statement st=con.createStatement();
           st.executeUpdate("update employee9 set First_name='"+First_name+"',Last_name='"+Last_name+"',Address='"+Address+"',State='"+State+"',Country='"+Country+"',Zipcode='"+Zipcode+"',Department='"+Department+"' where ID="+ID+"");
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

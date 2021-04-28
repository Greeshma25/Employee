<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Action Page</title>
    </head>
    <body>
       
        <form action="EmployeeActionPage.jsp"> 
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
           st.execute("insert into employee9(ID,First_name,Last_name,Address,State,Country,Zipcode,Department,Status) values(0,'"+First_name+"','"+Last_name+"','"+Address+"','"+State+"','"+Country+"','"+Zipcode+"','"+Department+"','waiting')");
           con.close();
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
        
        %>
        <center><p style="color:red">Registration has been successfully completed</p></center>
       
        <center> <button>done</button></center>
        </form>
    </body>
</html>

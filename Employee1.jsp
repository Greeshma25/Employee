
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

        <html>
            <head>
           <style>
.button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 8px;
}



.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}


.vertical-menu {
  width: 200px;
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
  color: white;
}
body {
  font-family: "Lato", sans-serif;
  text-align: center;
  
        
     
        
         
    
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #00008B;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
}


.sidenav a:hover {
  color:deepskyblue ;
}

.main {
  margin-left: 200px; 
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

</style>
</head>
               
            <body>
                  
                  <div class="main">
                      <div class="t1">
         <h1>
             
        
            <br> 

           
                        
                    
         </h1>  
        </div>
                <h2> Registered Employees</h2>
                <table border="1">
                    <tr>
                        <td bgcolor="pink">ID</td>
                        <td bgcolor="pink">First_name</td>
                        <td bgcolor="pink">Last_name</td>
                        <td bgcolor="pink">Address</td>
                        <td bgcolor="pink">State</td>
                        <td bgcolor="pink">Country</td>
                        <td bgcolor="pink">Zipcode</td>
                        <td bgcolor="pink">Department</td>
                         <td bgcolor="pink">Delete</td>
                          <td bgcolor="pink">Edit</td>
                    </tr>
                    <% 
    try{
                     ResultSet resultSet = null;
                     Class.forName("com.mysql.jdbc.Driver");  
  
                     Connection con=DriverManager.getConnection(  
                     "jdbc:mysql://localhost:3306/firstdb","root","root");  
         
                     Statement st=con.createStatement();
                     String sql ="select * from employee9";
                                                                               
                        resultSet = st.executeQuery(sql);
                        while(resultSet.next())
                        {
                                                                        
                                      
                        %>
                        
                       <tr>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("ID")%></p></td>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("First_name") %></p></td>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("Last_name") %></p></td>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("Address") %></p></td>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("State") %></p></td>
                        <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("Country")%></p></td>
                         <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("Zipcode") %></p></td>
                          <td bgcolor="black"><p style="color:whitesmoke"><%=resultSet.getString("Department") %></p></td>
                           
                           
                           <td bgcolor="black"><a href="deleteprof.jsp?id=<%=resultSet.getString("ID")%>">Delete</a></td>
                           <td bgcolor="black"><a href="editprof.jsp?id=<%=resultSet.getString("ID")%>">Edit</a></td>
                           
                    </tr>
                  </div>
                          
                    <% 
                         session.setAttribute("uid",resultSet.getString("ID"));
                        }
                        con.close();
                        }
                       
                         

                        catch(Exception e)
                        {
                        e.printStackTrace();
                        }
                    %>

                     
                </table>
                     <button type="button" onClick="refresh()">Refresh</button>

<script>
function refresh(){
    window.location.reload();
} 
</script>  


<a style="color:whitesmoke; background-color:black " href="EmployeeRegistration.jsp">Add</a><br>
    
   
            </body>
        </html>
        
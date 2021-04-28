<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <form action="edit_intern.jsp">
            <h1>Update employee details here</h1>
        <%
            String ID = request.getParameter("id");
            int eid=Integer.parseInt(ID);
           
            try
            {
                     Class.forName("com.mysql.jdbc.Driver");  
  
                     Connection con=DriverManager.getConnection(  
                     "jdbc:mysql://localhost:3306/firstdb","root","root");  
         
                     Statement st=con.createStatement();
                     
                     
                   String sql="select * from employee9 where ID="+eid+"";
                    
                     ResultSet rs=st.executeQuery(sql);
                     while(rs.next())
                     {
                       
                                 %>
                                 <table>
                                     <tr>
                                         <td>ID</td><td><input type="text" name="ID" value="<%=rs.getString("ID")%>"/></td>
                                     </tr>
                                     <tr>
                                         <td>First_name</td><td><input type="text" name="First_name" value="<%=rs.getString("First_name")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>Last_name</td><td><input type="text" name="Last_name" value="<%=rs.getString("Last_name")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>Address</td><td><input type="text" name="Address" value="<%=rs.getString("Address")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>State</td><td><input type="text" name="State" value="<%=rs.getString("State")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>Country</td><td><input type="text" name="Country" value="<%=rs.getString("Country")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>Zipcode</td><td><input type="text" name="Zipcode" value="<%=rs.getString("Zipcode")%>"/></td>
                                         
                                     </tr>
                                      <tr>
                                         <td>Department</td><td><input type="text" name="Department" value="<%=rs.getString("Department")%>"/></td>
                                         
                                     </tr>
                                     <%
                                         }
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
<tr>
    <td><input type="submit" value="Submit"</td>
</tr>
                                 </table>
    </form>
    </body>
</html>

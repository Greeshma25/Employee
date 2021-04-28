
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Registration</title>
        <link rel="stylesheet" href="regformstyle1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script type="text/javascript">
         
            </script>
    </head>
    <body>
          
         <form action="EmployeeActionPage.jsp" onsubmit="return validate()" method="POST" id="form1">
        <div class="container">
            
            <div class="row">
                <div class="col-md-10 btn1">
                            
                                <div class="col-md-7 register-right">
                                    <h2>Register Here</h2>
                                            <div class="register-form">
                                                <div class="form-group">
                                                    <table>
                                                        <tr><td>ID:</td><td> <input type="text" name="ID"></td></tr>
                                        </div>
                                                <div class="form-group">
                                        <tr><td> First_name:</td><td> <input type="text" placeholder="Enter First name"name="First_name" id="name2"></td></tr>
                                        </div>
                                                <div class="form-group">
                                        <tr><td> Last_name:</td><td><input type="text" placeholder="Enter Last name" name="Last_name"></td></tr>
                                        </div>
                                                 <div class="form-group">
                                        <tr><td> Address:</td><td><input type="text" placeholder="Enter Address" name="Address"></td></tr>
                                        </div>
                                                <div class="form-group">
                                        <tr><td> State:</td><td><input type="text" placeholder="Enter State" name="State"></td></tr>
                                        </div>
                                                <div class="form-group">
                                        <tr><td>  Country:</td><td><input type="text" placeholder="Enter Country" name="Country" required></td></tr>
                                        </div>
                                                 <div class="form-group">
                                        <tr><td>  Zipcode:</td><td><input type="text" placeholder="Enter Zipcode" name="Zipcode" required></td></tr>
                                        </div>
                                                <div class="form-group">
                                       <tr><td>  Department:</td><td><select name="Department" id="Department">
                                             <option value="Accounting">Accounting</option>
                                             <option value="Technical">Technical</option>
                                             <option value="Logistics">Logistics</option>
                                         </select></td></tr>
                                       </table>
                                             <br>
                                        </div>
                                                 <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                </div>
            </div>
        </div>                                         
             
            </div>
        </div>
             </form>
    </body>

</html>


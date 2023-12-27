<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Shifts</title>

   <style>
   
      *{
       margin: 0;
       padding: 0;
       box-sizing: border-box;
       font-family: 'Montserrat', sans-serif;
     }
     
     body{
       background:#e6e6fa;
       padding: 0 10px; 
     }
     
     .wrapper{
       max-width: 500px;
       width: 100%;
       background-color: #6c5ce7; /* Change background color to blue (#007bff) */
       margin: 80px auto;
       padding: 50px;
       box-shadow:4px 4px 0 rgba(0, 0, 0, 0.25);
       border: 1px solid #327a81;
       border-radius: 15px;
     }
     
     .wrapper .title{
       font-size: 24px;
       font-weight: 700;
       margin-bottom: 35px;
       color: #fff;
       text-transform: uppercase;
       text-align: center;
     }
     
     .wrapper .form{
       width: 100%;
     }
     
     .wrapper .form .inputfield{
       margin-bottom: 30px;
       display: flex;
       align-items: center;
     }
     
     .wrapper .form .inputfield label{
       width: 100px;
       color: #fff;
       margin-right: 10px;
       font-weight: bold;
       font-size:15px;
     }
     
     .wrapper .form .inputfield .input{
       width: 100%%;
       outline: none;
       border: 1px solid #d5dbd9;
       font-size: 15px;
       padding: 8px 10px;
       border-radius: 3px;
       transition: all 0.3s ease;
     }
     
     .wrapper .form .input_field .btn{
       width: 100%;
       padding: 8px 10px;
       font-size: 15px;
       border: 0;
       background:#000080;
       color: #fff;
       cursor: pointer;
       border-radius: 3px;
       outline: none;
       border: 1px solid #fff;
     }
     
     .wrapper .form .input_field:last-child{
       margin-bottom: 0;
     }
     
     .wrapper .form .input_field .btn:hover{
       background:#0000FF;
     }
   
   </style>
</head>
<body>

   <% 
      String staffid = request.getParameter("staffid");
      String staffname = request.getParameter("staffname");
      String workdate = request.getParameter("workdate");
      String startwork = request.getParameter("startwork");
      String endwork = request.getParameter("endwork");
      
   %>


<div class= "wrapper">
    <div class= "title">Update Shifts</div>
    <div class= "form">

      <form action="update" method="post">
      
         <div class="inputfield">
         <label>Staff ID</label>
         <input type="text" name="staffid" value="<%= staffid  %>"readonly class="input"> <br>
         </div>
         
         <div class="inputfield">
         <label>Staff Name</label>
         <input type="text" name="staffname" value="<%= staffname %>" class="input"> <br>
         </div>
         
         <div class="inputfield">
         <label>Work Date</label>
         <input type="date" name="workdate" value="<%= workdate %>" class="input"> <br>
         </div>
         
         <div class="inputfield">
         <label>Start Work</label>
         <input type="time" name="startwork" value="<%= startwork %>" class="input"> <br>
         </div>
         
         <div class="inputfield">
         <label>End Work</label>
         <input type="time" name="endwork" value="<%= endwork %>" class="input"> <br>
         </div>
    
         <div class="input_field">
         <input class="btn" type="submit" value="update" name="staffid">
         </div>
   
      </form>
    </div> 
</div>  

</body>
</html>
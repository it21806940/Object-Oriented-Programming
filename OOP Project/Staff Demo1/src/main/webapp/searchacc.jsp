<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Shifts</title>

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
       background:#5a78dd;
       margin: 160px auto;
       padding: 50px;
       box-shadow: 2px 2px 2px rgba(0,0,0,0,125);
     }
     
     .wrapper .title{
       font-size: 24px;
       font-weight: 700;
       margin-bottom: 35px;
       color:#fff;
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

   <div class= "wrapper">
      <div class= "title">Search Shifts</div>
      <div class= "form">
      <form action="search" method="post">
      
      <div class="inputfield">
         <label>Staff ID</label>
         <input type="text"  name="staffid" class="input">
      </div> 
      
      <div class="input_field">
         <input class="btn" type="submit" value="search" name="staffid">
      </div>   
      
      </form>
      </div>
   </div>

</body>
</html>
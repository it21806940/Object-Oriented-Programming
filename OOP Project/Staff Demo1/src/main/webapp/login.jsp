<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Form</title>
    <style>
      form {
        max-width: 500px;
        margin: 0 auto;
        background-color: #6c5ce7; /* Change background color to blue (#007bff) */
        padding: 60px;
        border-radius: 15px;
        box-shadow: 0 14px 28px rgb(0, 0, 0);
        margin-top: 150px;
      }

      body {
        background:#e6e6fa;
      }

      h1 {
        color: #ffffff;
        font-size: 32px;
        text-align: center;
        margin-bottom: 20px;
        font-weight: bold;
      }

      label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        font-size: 24px;
        color: #ffffff;
      }

      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
      }

	  
      
      .input_field .btn{
       width: 30%;
       padding: 8px 5px;
       font-size: 15px;
       border: 0;
       background:#000080;
       color: #fff;
       cursor: pointer;
       border-radius: 3px;
       outline: none;
       border: 1px solid #fff; 
      }
      
	  /hover background colour/
      input[type="submit"]:hover {
        background-color: #e3e3e3; 
      }
      
      .input_field .btn:hover{
         background: #0000FF;
       }
    </style>

    <script>
      function validate() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;

        if (username == "" || password == "") {
          alert("Please enter both username and password");
          return false;
        } else if (username != "myusername" || password != "mypassword") {
          alert("Invalid username or password");
          return false;
        } else {
          alert("Login successful");
          return true;
        }
      }
    </script>
  </head>
  <body>
    <form>
      <h1>Login Form</h1>
      <label for="username">Username:</label>
      <input type="text" id="username" name="username">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
      
      <div class="input_field">
      <input class="btn" type="submit" value="Login" onclick="validate()">
      </div>
    </form>
  </body>
</html>
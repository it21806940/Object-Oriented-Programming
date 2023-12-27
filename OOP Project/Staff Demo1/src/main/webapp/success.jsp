<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>

   <style type="text/css">
   
      @charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	outline:none;
	font-family: 'Montserrat', sans-serif;
}

body{
	height:100vh;
	display:flex;
	align-items:center;
	justify-content:center;
	background:#e6e6fa;
}


 
 .wrapper .alert_wrap{
 	width:350px;
 	background:#5a78dd;
 	position:relative;
 	box-shadow:0 0 2px rgba(0,0,0,0.05);
 }
 
 .wrapper .alert_wrap .alert_icon{
 	position:absolute;
 	top:-40px;
 	left:50%;
 	transform:translateX(-50%);
 	width:80px;
 	height:80px;
 	background:#fff;
 	border-radius:50%;
 	display:flex;
 	align-items:center;
 	justify-content:center;
 		
 }
 
 .wrapper .alert_wrap .alert_icon .icon{
 	display:black;
 	font-size:40px;
 	padding:5px;
 	border-radius:50%;
 	
 }
 
  .wrapper .alert_wrap.success .alert_icon .icon{
  	border:2px solid #b47ede;
  	color:#b47ede;
  
  }
  
  .wrapper .alert_wrap.erro .alert_icon .icon{
  	border:2px solid #e54053;
  	color:#b47ede;
  }
  
.wrapper .alert_wrap .content{
  	padding:60px 30px 30px;
  	text-align:center;
  	
  }
  
.wrapper .alert_wrap .content .title{
   	color:#b5b5b5;
   	line-height:22px;
   }
  
.wrapper .alert_wrap button{
	border:0;
	display:black;
	color:#fff;
	width:100%;
	padding:15px;
	font-weight:700;
	cursor:pointer;
	
	
} 
.wrapper .alert_wrap.success button{
	background:#000080;
}

.wrapper .alert_wrap.erro button{
	background:#b47ede;
}

.wrapper .alert_wrap.success button:hover{
	background:#0000FF;
}

.wrapper .alert_wrap.error button:hover{
	background:#0000FF;
}
      
   </style>
  
</head>
<body>

    <div class="wrapper">
	<div class="alert_wrap success">
		<div class="alert_icon">
		<i class="icon"></i>
		</div>
		<div class="content">
			<p class="title">Wohoo! Success</p>
			<p class="info">Successfully done! </p>
		</div>
		<a href="searchacc.jsp">
		<button>Search Shift</button>
		</a>
	</div>
	
</div>

</body>
</html>
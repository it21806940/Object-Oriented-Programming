<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHIFTS</title>

    <style type="text/css">
    
         *{
	       margin:0;
	       padding:0;
	       outline:0;
	       font-family: 'Montserrat', sans-serif;
	      }

         body{
	      background:#e6e6fa;
          
          
         }
         
                  
         table{
	      position:absolute;
	      z-index:2;
	      left:50%;
	      top:40%;
	      transform:translate(-50%, -50%);
	      width:60%;
	      border-collapse:collapse;
	      border-radius:12px 12px 0 0;
	      border-spacing:0;
	      border-radious:12px 12px 0 0;
	      overflow:hidden;
	      box-shadow;0 2px 12px rgba(32,32,32,.3);
	      background:#B0C4DE;
	      text-align:center;
	      margin: 50px auto;
	      box-shadow:4px 4px 0 rgba(0, 0, 0, 0.25);
          border: 1px solid #327a81;
	    }

        th,td{
	      padding:20px 20px;
	
        } 
         
        th{
	     background:#0000ff;
	     color:#fafafa;
	     text-transform:uppercase;
	     font-family: 'Montserrat', sans-serif;
	
       }
       
      tr:nth-child(odd){
	     backgroud-color:#B0C4DE;
      }
      
      .btn{
	    font-size:15px;
	    font-weight:bold;
	    background:#0000ff;
	    width:250px;
	    padding:14px;
	    text-align:center;
	    text-decoration:none;
	    text-transform:uppercase;
	    color:#fff;
	    border: none;
	    cursor:pointer;
	    box-shadow:0 0 1px #696969;
	    -webkit-transition-duration:0.3s;
	    transition-duration:0.3s;
	    -webkit-transition-property:box-shadow,transform;
	    position: relative;
	    margin-top: 20px;
        left:60%;
        border: 1px solid #fff;
	

     }
     
     .btn:hover, .btn:focus, .btn:active{
	   box-shadow:0 0 20px rgba(0,0,0,0.1);
	   background: #B0C4DE;
     }
      
    </style>
</head>
<body>

    <div class="image">
        <img src="C:\Users\DOMAX\Downloads\pexels-jo-seph-15556833.jpg" alt="">
    </div>
    
    <c:forEach var="stf" items="${stfDetails}">
    
    <c:set var="staffid" value="${stf.staffid}"/>
    <c:set var="staffname" value="${stf.staffname}"/>
    <c:set var="workdate" value="${stf.workdate}"/>
    <c:set var="startwork" value="${stf.startwork}"/>
    <c:set var="endwork" value="${stf.endwork}"/>
    
    <div class="tbl">
    
    <table>
    <tr>
      <th>Staff ID</th>
      <th>Staff Name</th>
      <th>Work Date</th>
      <th>Start Date</th>
      <th>End Date</th>
     </tr> 
       
     
    
    <tr>
      <td>${stf.staffid}</td>
      <td>${stf.staffname}</td>
      <td>${stf.workdate}</td>
      <td>${stf.startwork}</td>
      <td>${stf.endwork}</td>
    </tr>  
      
          
    
     
    
    
    </table>
    
    </div>
    </c:forEach>
    
    
    <c:url value="updateshift.jsp" var="shiftupdate"> 
        <c:param name="staffid" value="${staffid}"/>
        <c:param name="staffname" value="${staffname}"/>
        <c:param name="workdate" value="${workdate}"/>
        <c:param name="startwork" value="${startwork}"/>
        <c:param name="endwork" value="${endwork}"/>
        
        
    </c:url>
    
    <a href="${shiftupdate}">
    <input class="btn" type="button" name="update" value="Update Shift">
    </a>
    
    
    <c:url value="delete.jsp" var="shiftdelete">
         <c:param name="staffid" value="${staffid}" />
         <c:param name="staffname" value="${staffname}" />
         <c:param name="workdate" value="${workdate}" />
         <c:param name="startwork" value="${startwork}" />
         <c:param name="endwork" value="${endwork}" />
         
    </c:url>
    <a href="${shiftdelete}">
    <input class="btn" type="button" name="delete" value="Delete">
    </a>
    
</body>
</html>
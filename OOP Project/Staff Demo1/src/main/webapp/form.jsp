<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <style type="text/css">
     
          *{
             margin:0;
             padding:0;
             box-sizing:border-box;
            }

           body{
    
              background-color:#e6e6fa;
              color:;
    
            }

            .service{
               padding: 100px 0;
            }
     
            .max-width{
               max-width: 1300px;
               padding: 0 45px;
               margin: auto;

            }

            .max-width h1{
               text-align: center;
               position: relative;
               font-size: 80px;
               font-color:#fafafa;
               font-weight:bold;
               margin-bottom: 60px;
               padding-bottom: 20px;

			}

		.max-width h1::after{
				    content: "";
				    position:10px;
				    width: 100px;
				    height: 3px;
				    background: #fff;
				    font-weight:bold; 
				    bottom: 0;
				    left: 50%;
				    transform: translateX(-50%);
				
				}
				
				.content{
				     display:flex;
				     flex-wrap: wrap;
				     justify-content:space-around;
				     
				     
				     
				}
				
				.card{
				    padding: 50px 25px;
				    width: calc(26% - 20px);
				    border-radius: 6px;
				    background:#5a78dd;
				    text-align: center;
				    text-color:#fff ;
				    user-select: none;
				    cursor: pointer;
				    transition: all 0.3s ease;
				    border: 1px solid #fff;
				}
				
				.card:hover{
				    background-color:#0000FF;
				}
            
                .box{
                    transition: all 0.3s ease;
                }

                .card:hover .box{
                     transform: scale(1.05);
    
                }


                .card:hover .box i{
                      color:#fafafa;
                }

                .card .box h3{
                      font-size:25px;
                      font-color: #808080;
                      padding: 10px 0 7px;
    
                 }
                
     
     
     </style>
</head>
<body>




	<div class="service">
        <div class="max-width">
            <h1>Shift Scheduling</h1>
            <div class="content">
                
                <div class="card">
                    <div class="box">
                        <h3>Search Account</h3>
                        <a href="searchacc.jsp">
                        <img src="https://cdn3.iconfinder.com/data/icons/gray-search-view-toolbar/512/search_document-512.png" width=150px height=150px>
                        </a>
                    </div>
                </div>
            
            
                <div class="card">
                    <div class="box">
                    <h3>Add Shift</h3>
                       <a href="createshift.jsp">
                        <img src="https://cdn3.iconfinder.com/data/icons/gray-toolbar-4/512/create-512.png" width=150px height=150px>
                        </a>
                    </div>
                </div>
            

            </div>
        </div>
    </div>



</body>
</html>

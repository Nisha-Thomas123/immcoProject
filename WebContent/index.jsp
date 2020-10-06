<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet" %>
     <jsp:useBean id="us" class="interViewProject.User"/>  
 <jsp:useBean id="daoo" class="interViewProject.DaoClass"/>  
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>IMMCOSSI-Nisha Thomas</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="">IMMCOSSI</a> 
            </div>

        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a class="active-menu"  href=""><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
                    
                        </ul>
                     
                
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
       
        <div id="page-wrapper" >
            <div id="page-inner">
                             <div class="col-md-6" id="addD">
                    			
                                     
                                </div>
                                <div class="col-md-6" id="edit"></div>
                                <br/><br/>
                                <div class="col-md-12" id="tab">
                                
                                <div class="panel panel-default">
                        <div class="panel-heading">
                            LISTING ALL USERS && ADD ALL USERS
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            <button type="button" class="btn btn-primary btn-lg"  onclick="addUser()" style="float:right;"> ADD</button>
                            <br/><br/>
                                <table class="table table-striped table-bordered table-hover">
                                
                                    <thead>
                                        <tr>
                                            <th>SL.NO</th>
                                            <th>NAME</th>
                                            <th>EMAIL</th>
                                            <th>AGE</th>
                                            <th>ACTION</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    int i=1;
                                     
                                    ResultSet rs=daoo.getAllUsers();
                                    while(rs.next())
                                    {
                                    
                                    %>
                                        <tr>
                                            <td><%=i %></td>
                                            <td><%=rs.getString("name") %></td>
                                            <td><%=rs.getString("email") %></td>
                                            <td><%=rs.getInt("age") %></td>
                                            <td>
                                            <button type="button" class="btn btn-primary btn-lg" onclick="showEditForm(<%=rs.getInt("userid")%>)"> Edit</button>&nbsp;
                                           
                                           <input type="hidden" id="uidid<%=i %>" value="<%=rs.getInt("userid")%>">
                                            <button type="button" class="btn btn-primary btn-lg" id="b1<%=i %>" onclick="deleteUser(<%=i%>)"> Delete</button>&nbsp;
                                           <span id="msg<%=i%>"></span>
                                           
                                            </td>
                                        </tr>
                                      <%
                                      i++;
                                      }
                                     %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    <br/>
                      <div class="panel-body" ></div>
                    
                    <script>
                    
                    function addUser()
                    {
                    	toadduser();
                    }
                    toadduser=function()
                    {
                		$("#addD").load("addForm.jsp",function(responseTxt,statusTxt,xhr){});
               	 	}
                   
                    
                    function showEditForm(id)
                    {
                    	 toeditd(id);
                    }

                   toeditd=function(id){
                    		$("#edit").load("editForm.jsp?uid="+id,function(responseTxt,statusTxt,xhr){});
                   	 
                    }
                  
                   
                   
                   function deleteUser(i)
                   {
                	   var id=document.getElementById("uidid"+i).value;
                	   var bean="deleteU";
                	   
                	 
                	   todelete(id,bean,i);
                   }

                  todelete=function(id,bean,i){
                	 //alert(id+ " "+i+ " "+bean)
                   		$("#msg"+i).load("mybean.jsp?bean="+bean+"&uid="+id,function(responseTxt,statusTxt,xhr){});
                   		
                   		
                   		document.getElementById("b1"+i).disabled = true;
                   }
                    
                    </script>
                                
                                
                                
                                
                                
                                </div>
                                <br/><br/>
                               
                    
                </div>
                  
                </div>     
                 <script>
                
                 
                 function showForm()
                 {

                
                 toas();
                 }

                 toas=function(){
               
                	 $("#tab").load("table.jsp",function(responseTxt,statusTxt,xhr){});
                 }
                
                 
                 </script>  
   
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>

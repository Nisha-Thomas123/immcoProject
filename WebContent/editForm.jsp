	<jsp:useBean id="us" class="interViewProject.User"/>  
 <jsp:useBean id="daoo" class="interViewProject.DaoClass"/>  
 <%@page import="java.sql.ResultSet" %>
 
 
 
 					<%String update="update";
						int uid=Integer.parseInt(request.getParameter("uid"));
						
						 ResultSet rss=daoo.getUsersById(uid);
						 String n=null;String e=null;int ag=0;
						 
                                    while(rss.next())
                                    {
                                   n=rss.getString("name");
                                    e= rss.getString("email");
                                   ag=rss.getInt("age") ;
                                    }
                                    %>
						
						<h3>UPDATE USER's DETAILS FORM</h3>
                                    <form role="form" action="mybean.jsp?bean=<%=update %>" method="POST">
                                        <div class="form-group has-success">
                                            <label class="control-label" for="inputSuccess">Name</label>
                                            <input type="text" class="form-control" name="ename" value="<%=n%>"  required>
                                            <span id="nameMsg"></span>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="control-label" for="inputWarning" >Email</label>
                                            <input type="email" class="form-control" name="eemail" value="<%=e%>" required>
                                             <input type="hidden" class="form-control" name="eid" value="<%=uid%>">
                                              <span id="emsg"></span>
                                        </div>
                                        
                                        <div class="form-group has-error">
                                            <label class="control-label" for="inputError" >Age</label>
                                            <select class="form-control" name="eage" >
                                            <option value="<%=ag%>"><%=ag%></option>
                                            <%
                                            for(int i=16;i<=36;i++)
                                            { 
                                            %>
                                            <option value="<%=i%>"><%=i%></option>
                                            <%} %>
                                            </select>
                                        </div>
                                          <div class="form-group has-warning">
                                            <input type="submit" class="btn btn-primary btn-lg" value="UPDATE">
                                        </div>
                                    </form>
                                    
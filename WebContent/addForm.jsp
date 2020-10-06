 									
 									<script type="text/javascript" src="myjs.js"></script>
 									
 									
 										<%String add="add"; %>
	
								<h3>ADD USER FORM</h3>
                                    <form role="form" action="mybean.jsp?bean=<%=add %>" method="POST" onsubmit="return ageValidate();">
                                        <div class="form-group has-success">
                                            <label class="control-label" for="inputSuccess">Name</label>
                                            <input type="text" class="form-control" onchange="return nameValidate()" id="name" name="name" placeholder="Enter your name" required>
                                      		<span id="nameMsg"></span>
                                      
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="control-label" for="inputWarning" >Email</label>
                                            <input type="email" class="form-control" name="email" id="email" onchange="return emailValidate()" placeholder="Enter your email" required>
                                        <span id="emsg"></span>
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="control-label" for="inputError" >Age</label>
                                            <span id="ageMsg"></span>
                                            <select class="form-control" name="age" id="age" onchange="return ageVl()">
                                            <option value="nill">----select from Below----</option>
                                            <%
                                            for(int i=16;i<=36;i++)
                                            { 
                                            %>
                                            <option value="<%=i%>"><%=i%></option>
                                            <%} %>
                                            </select>
                                        </div>
                                          <div class="form-group has-warning">
                                            <input type="submit" class="btn btn-primary btn-lg" value="ADD">
                                        </div>
                                    </form>
                                    
                                    <br/>
                                    <!--  <button type="button" class="btn btn-primary btn-lg" onclick="showForm()"> View/Edit</button>-->
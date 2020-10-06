<jsp:useBean id="u" class="interViewProject.User"/>  
<jsp:useBean id="dao" class="interViewProject.DaoClass"/>  

<%
    String bean=request.getParameter("bean");

String del="deleteU";

  
  if(bean.equals("add"))
  {
	String name=request.getParameter("name");
	int age=Integer.parseInt(request.getParameter("age"));
	String email=request.getParameter("email");
	
	u.setName(name);
	u.setEmail(email);
	u.setAge(age);
	 
	int i=dao.saveUser(u);
	if(i>0)
	{
		out.println("<script>alert('sucessfully Added');window.location='index.jsp';</script>");
	}
	else
	{
		out.println("<script>alert('oops! please reEnter');window.location='index.jsp';</script>");
	}
	
}

else if(bean.equals("update"))
{
	String ename=request.getParameter("ename");
	int eage=Integer.parseInt(request.getParameter("eage"));
	int uid=Integer.parseInt(request.getParameter("eid"));
	String eemail=request.getParameter("eemail");
	
	u.setName(ename);
	u.setEmail(eemail);
	u.setAge(eage);
	 u.setUserid(uid);
	int i=dao.updateUser(u);
	if(i>0)
	{
		out.println("<script>alert('sucessfully Updated');window.location='index.jsp';</script>");
	}
	else
	{
		out.println("<script>alert('oops! please reEnter');window.location='index.jsp';</script>");
	}
}
else if(bean.equals("deleteU"))
  {
  	int uid=Integer.parseInt(request.getParameter("uid"));
  	
  	
  	int i=dao.deleteUser(uid);
  	
  	if(i>0)
  	{
  		
  		out.println("<script>alert('sucessfully deleted');window.location='index.jsp';</script>");
  	}
  	else
  	{
  		out.println("<script>alert('oops! please delete once');window.location='index.jsp';</script>");
  	}
  	
  }


%>
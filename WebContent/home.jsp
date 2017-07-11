<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="model.Account,model.DBconnection,model.AccountService,java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	 <%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String register = request.getParameter("register");
    System.out.println(userName);
    System.out.println(password);
    System.out.println(register);
    if(register == null)
    {
    
    	if(AccountService.checkAccount(userName, password))
    	{
    		PrintWriter printWriter = response.getWriter();
    		printWriter.print("Hello: "+userName);
    		System.out.println(AccountService.checkAccount(userName, password));
    	}
    	else
    	{
    		response.sendRedirect("login.jsp");
    	}
    }
    else
    {
    	if(AccountService.registerAccount(userName, password))
    	{
    		PrintWriter printWriter = response.getWriter();
    		printWriter.print("Success");
    	}
    	else
    	{
    		response.sendRedirect("login.jsp");
    	}
    }
  	%>

</body>
</html>
<html>
    <head>
        <title>Login System</title>
    </head>
 
    <body>
        <%
        String firtname=(String)session.getAttribute("FirstName");
        
        //redirect user to login page if not logged in
        if(firtname==null){
        	response.sendRedirect("index.jsp");
        }
        %>
    
        <p>Welcome <%=firtname%></p> 
        <p>Session ID is  :  <%=request.getSession().getId()%></p>  
        <a href="logout.jsp">Logout</a>
    </body>
</html>
<html>
    <head>
        <title>Login System</title>
    </head>
 
    <body>
        <%
        String email=(String)session.getAttribute("firstname");
        System.out.print(email);
        //redirect user to home page if already logged in
        if(email!=null){
            response.sendRedirect("home.jsp");
        }
 				HttpSession sess = request.getSession();
 				sess.setMaxInactiveInterval(10);
 				System.out.println(sess.getId());
              String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        }
        %>
    
        <form action="loginRequestHandler.jsp">
            <table cellpadding="5">
                <tr>
                    <td><b>FirstName :</b></td>
                    <td><input type="text" name="firstname" required/></td>
                </tr>
 
                <tr>
                    <td><b>Password :</b></td>
                    <td><input type="password" name="password"/></td>
                </tr>
 
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"/></td>
                </tr>
 
            </table>
        </form>
    
    </body>
</html>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%! 
String url = "jdbc:mysql://localhost:3306/demo";
String user ="root";
String pass = "rootpassword";
String result="false";
%>
<%

String firstName = (String)request.getParameter("firstname");
Class.forName("com.mysql.jdbc.Driver");
Connection myCon = DriverManager.getConnection(url, user, pass);

Statement st = myCon.createStatement();

String sql = "select * from student";

ResultSet output = st.executeQuery(sql);
int i = 1;
while(output.next()) {
	System.out.println(output.getString("firstname"));
	if(output.getString("firstname").equals(firstName)){
		System.out.println(output.getString("firstname"));
		result =  "true";
	}

}
System.out.println("Value of result : = " +result );
if(result.equals("true")){
	result =  "false";
	session.setAttribute("FirstName",firstName);
	response.sendRedirect("home.jsp");
	return;
}
 
if(result.equals("false")){
	response.sendRedirect("index.jsp?status=false");
}
 
if(result.equals("error")){
    response.sendRedirect("index.jsp?status=error");
}
 
%>
<%-- 
    Document   : MultiValueResult
    Created on : Feb 13, 2017, 10:22:23 AM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<%
    String[] fruits = request.getParameterValues("fruit");
    int i = 0;
%>
<html> 
    <head> 
        <title>Hello User Application</title> 
    </head> 
    <body> 
        <h1>Your Selections</h1> 
        <%
            if (fruits == null) {
        %>
        You did not select any fruits 
        <%
        } else {
            out.print("<ul>");
            for (String fruit : fruits) {
        %>
            <li><%=fruit%></li>
        <%
                }
            }
            out.print("</ul>");
        %>
</body> 
</html>

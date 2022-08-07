<%-- 
    Document   : roleAction
    Created on : Aug 4, 2022, 12:43:45 PM
    Author     : thembo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>roles</title>
    </head>
    <body>
        <%
    String roleName= getParameter("roleName");
    String description = getParameter("description");
    
    Statement st = null;
    
    try{
    Connection con = connectionProvider.getCon();
    st = con.createStatement();
    st.executeUpdate("insert into users set role='"+roleName+"', description='"+description+"'" );
    
    
            }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
            
            }
        
        
        %>
    </body>
</html>

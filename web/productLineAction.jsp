<%-- 
    Document   : productLineAction
    Created on : Aug 5, 2022, 10:36:26 AM
    Author     : thembo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.* " %>


<%
    String productTerm = getParameter("productTerm");
    String quantity = getParameter("quantity");
    String dateAdded = getParameter("dateAdded");
    String status = request.getParameter("status");
    String description = getParameter("description");
    

try{
    Connection con = connectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("insert into products values(?,?,?,?,?)");
    ps.setString(1,productTerm);
    ps.setString(2, quantity);
    ps.setString(3, dataAdded);
    ps.setString(4, status);
    
    ps.setString(5,description);
    ps.executeUpdate();
    response.sendRedirect("productLine.jsp?msg=added");
    

    }catch(){
    System.out.println(e);
    response.sendRedirect("productLine.jsp?msg=Not added");
    }
    
%>



<%-- 
    Document   : adminEditProductAction
    Created on : Aug 4, 2022, 2:49:58 PM
    Author     : thembo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.* " %>

        <%
    //Getting all the inputs from the admin
  
    String productName = getParameter("productName");
    String quantity = getParameter("quantity");
    String price = getParameter("price");
    String uploadIMage = getParameter("uploadImage");
    String status = request.getParameter("status");
    String description = getParameter("description");
    

    //Querying to the database
    int updateProduct = con.insertUpdateFromSqlQuery("update products set products='" + productName + "',price='" + price + "',description='" + description + "',quantity='" + quantity + "',active='" + status + "' where id='" + id + "'");
    if (updateProduct > 0) {
        response.sendRedirect("DashboardManager.jsp");
    } else {
        response.sendRedirect("DashboardManager.jsp");
    }
%>
    
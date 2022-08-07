<%-- 
    Document   : addProductAction
    Created on : Aug 4, 2022, 11:13:49 AM
    Author     : thembo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.* " %>

<%
    String productName = getParameter("productName");
    String quantity = getParameter("quantity");
    String price = getParameter("price");
    String uploadIMage = getParameter("uploadImage");
     String status = request.getParameter("status");
    String description = getParameter("description");
    

try{
    Connection con = connectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("insert into products values(?,?,?,?,?,?)");
    ps.setString(1,productName);
    ps.setString(2, quantity);
    ps.setString(3, price);
    ps.setString(4, uploadImage);
     ps.setString(5, status);
    ps.setString(6,description);
    ps.executeUpdate();
    response.sendRedirect("addProduct.jsp?msg=added");
    

    }catch(){
    System.out.println(e);
    response.sendRedirect("addProduct.jsp?msg=Not added");
    }
    
%>



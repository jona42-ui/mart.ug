<%-- 
    Document   : productLine
    Created on : Aug 5, 2022, 10:35:53 AM
    Author     : thembo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Head -->
        <jsp:include page="includes/header.jsp" flush="true"></jsp:include>
        <!-- Head -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product line</title>
    </head>
    <body>
        <!<!-- Add Product line -->
<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">

    <div class="content text-center ml-3" id="add_product">
            <h1 class="h1 text-primary bg-dark px-2" style="color: yellow; font-size: 46px;">Add product Line</h1>
                <div class="form">
                    <form class="text-center"post" action="productLineAction.jsp">
                        <h2>Add product Line details Here</h2>
                        
                        <div class="col-md-6 form-group">
                                        <label>Product Term</label> 
                                        <select class="form-control" name="productTerm" required>
                                            <option>Long Term</option>
                                            <option>Short Term</option>
                                            
                                        </select>
                        </div>
                        
              
                        <div class="col-md-6 form-group ">
                            <label>Quantity</label>
                            <input class="form-control text-center" type="number" placeholder="0" name="quantity" id="quantity" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Date Added</label>
                            <input class="form-control text-center" type="date" placeholder="dd/mm/yyyy" name="dataAdded" required>
                        </div>
                         
                        <div class="col-md-6 form-group">
                                        <label>Status</label> 
                                        <select class="form-control" name="status" required>
                                            <option>Active</option>
                                            <option>Inactive</option>
                                            
                                        </select>
                         </div>
                
                        <!--description-->
                        <div class="col-md-6 form-group ">
                        <p><label for="martreview">Description:</label></p>
                        <textarea id="martreview" name="description" rows="4" cols="50">unique attires.</textarea>
                        </div>
                        </form>
                   </div>
                   </div> 
            </div>
        
     <!--ui feedback-->   
        
        <%
String msg = request.getParameter("msg");
if("added".equals(msg)){
%>
 <h>Product Line successfully added</h>   
<%
 }
%>
 <%
 if("Not added".equals(msg)){
  %>
<h>Product Line not  added, try again</h>  
<%
 }
%>
 
        
 <!-- Footer -->
<jsp:include page="includes/footer.jsp" flush="true"></jsp:include>
<!-- Footer -->
              
    </body>
</html>

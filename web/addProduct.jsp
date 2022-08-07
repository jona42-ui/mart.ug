<%-- 
    Document   : addProduct.jsp
    Created on : Aug 4, 2022, 11:11:19 AM
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
        <title>addProduct</title>
    </head>
    <body>
        <!<!-- Add Product -->
<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">

    <div class="content text-center ml-3" id="add_product">
            <h1 class="h1 text-primary bg-dark px-2" style="color: yellow; font-size: 46px;">Add products</h1>
                <div class="form">
                    <form class="text-center"post" action="addProductAction.jsp">
                        <h2>Add product details Here</h2>
                        
                        <div class="col-md-6 form-group">
                            <label>Product Name</label>
                            <input class="form-control text-center" type="text" placeholder="Shirt" name="pdt_name" id="productName" required>
                        </div>
                        
              
                        <div class="col-md-6 form-group ">
                            <label>Quantity</label>
                            <input class="form-control text-center" type="number" placeholder="0" name="quantity" id="quantity" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Price</label>
                            <input class="form-control text-center" type="currency" placeholder="0,000" name="price" required>
                        </div>
                         <div class="col-md-6 form-group">
                                        <label>Status</label> 
                                        <select class="form-control" name="status" required>
                                            <option>Active</option>
                                            <option>In-Active</option>
                                        </select>
                                    </div>
                        <div class="col-md-6 form-group ">
                            <div class="form-group">
                             <label>Attach Product Image</label> <input type="file" name="uploadImage" required/>
                        </div>
                
                        <!--description-->
                          <div class="col-md-6 form-group ">
                        <p><label for="martreview">Description:</label></p>
                        <textarea id="martreview" name="description" rows="4" cols="50">unique attires.</textarea>
                        <div>
                            
                        <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this product?');">Add Product</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                         </div>
                        </form>
           </div>
    </div>
<!<!-- Add Product -->
<%
String msg = request.getParameter("msg");
if("added".equals(msg)){
%>
 <h>Product successfully added</h>   
<%
 }
%>
 <%
 if("Not added".equals(msg)){
  %>
<h>Product not  added, try again</h>  
<%
 }
%>
 

<!-- Footer -->
<jsp:include page="includes/footer.jsp" flush="true"></jsp:include>
<!-- Footer -->
    </body>
</html>

<%-- 
    Document   : adminEditProduct
    Created on : Aug 4, 2022, 2:49:33 PM
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
        <title>edit product</title>
    </head>
    <body>
        <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">Edit Product</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">Edit Product</div>
                            <%
                                //Getting input from the admin
                                int id = Integer.parseInt(request.getParameter("id"));
                                //Querying to database
                                ResultSet updateResult = con.getResultFromSqlQuery("select * from products where id='" + id + "' ");
                                while (updateResult.next()) {
                            %>
                            <div class="panel-body">
                                <form role="form" action="adminEditProductAction.jsp"
                                      method="post">
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
                            
                                    <button type="submit" class="btn btn-success">Update Product</button>
                                </form>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div>
     </div>
  </div>
    </body>
    <!-- Footer -->
<jsp:include page="includes/footer.jsp" flush="true"></jsp:include>
<!-- Footer -->
</html>

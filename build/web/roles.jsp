<%-- 
    Document   : roles.jsp
    Created on : Aug 4, 2022, 12:43:15 PM
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
        <title>roles</title>
    </head>
    <body>
        <!<!-- Add Product -->
<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">

    <div class="content text-center ml-3" id="add_product">
            <h1 class="h1 text-primary bg-dark px-2" style="color: yellow; font-size: 46px;">Roles</h1>
                <div class="form">
                    <form class="text-center"post" action="roleAction.jsp">
                        
                        
                        <div class="col-md-6 form-group">
                            <label>role Name</label>
                            <input class="form-control text-center" type="text" placeholder="role" name="role" id="roleName" required>
                        </div>
                      
                
                        <!--role description-->
                          <div class="col-md-6 form-group ">
                        <p><label for="martreview">role Description:</label></p>
                        <textarea id="roledescription" name="roledescription" rows="4" cols="50">deals with Human Resource.</textarea>
                        <div>
                            
                          </form>
                 
                    <a href=""><button class="bg-primary">ADD</button></a>
                 </div>
        </div>
    </div>
<!<!-- Add Product -->
<!-- Footer -->
<jsp:include page="includes/footer.jsp" flush="true"></jsp:include>
<!-- Footer -->
    </body>
</html>

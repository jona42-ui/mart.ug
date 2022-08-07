<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registering...</title>
    </head>
    <body>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.SQLException"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.PreparedStatement"%>
        
        
        <%
            
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String location = request.getParameter("location");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirm = request.getParameter("confirm");
          
            //step 1 load the jdbc driver
            
            if(password.equals(confirm)){
                 
                Statement st = null;
                PreparedStatement ps = null;
                
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mart","root","");
                
                
                String mysql = "SELECT * FROM users WHERE email = ?";
                ps = con.prepareStatement(mysql);
                
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
                
                if(rs.next()){
                    request.setAttribute("user", "User already exist!");
                    request.getRequestDispatcher("custregister.jsp").forward(request, response);
                    return;
                }else {
                
                    st = con.createStatement();
                    st.executeUpdate("insert into users set user='"+name+"',email='"+email+"',user_name='"+username+"',location='"+location+"',gender='"+gender+"',password='"+password+"'");
              
                }
                
                
                }catch(ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
                 
            }else {
            
                request.setAttribute("error", "passwords do not match!");
                request.getRequestDispatcher("custregister.jsp").forward(request, response);
                return;
            }     
               
        %>
        
        <% 
            request.setAttribute("success", "Welcome to Mart!");
            request.setAttribute("user", name);
            request.getRequestDispatcher("/DashboardCustomer.jsp").forward(request, response);
            response.sendRedirect(request.getContextPath() + "/DashboardCustomer.jsp"); 
           
        
        %>
               
    </body>
</html>

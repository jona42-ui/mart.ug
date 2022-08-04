
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
        
        
        <%
          
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String location = request.getParameter("location");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
           
            out.println(name);
          
            //step 1 load the jdbc driver

            Statement st = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mart","root","");
                st = con.createStatement();
               
                String sql = "insert into users(user,gender,location,email,user_name,password,role) "
                            + "value('"+name+"','"+gender+"','"+location+"','"+email+"','"+username+"','"+password+"','"+role+"')";
                            
                st.executeUpdate(sql);
                
            }catch(ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
                
               
               
        %>
        
        successful
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticating</title>
    </head>
    <body>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.SQLException"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager"%>
        
        
        <%
            String auth = request.getParameter("auth");
            switch (auth) {
                case "login":{
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    if(username != "" && password !=""){
                 
                    PreparedStatement st = null;
            
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mart","root","");
                        
                        String sql = "SELECT * FROM users WHERE username = ? and password = ?";
                        st = con.prepareStatement(sql);
                        
                        st.setString(1, username);
                        st.setString(2, password);
                    
                        ResultSet rs = st.executeQuery();
                    
                        if(rs.next()){
                            String usr = rs.getString("user_name");
                            
                            String userRole = "select * from users, roles where users.role = roles.id and users.user_name = '"+usr+"'";
                            rs = st.executeQuery(userRole);
                            
                            while(rs.next()) {
                                
                                String roleUri = rs.getSting("uri");
                                request.setAttribute("success", "Login Successful!");
                                request.setAttribute("user", us);
                                request.getRequestDispatcher(roleUri).forward(request, response);
                                response.sendRedirect(request.getContextPath() + roleUri);//--- /DashboardCustomer.jsp
                            break;
                                
                                
                    
                            }
                    
                            
                        }else {
                            request.setAttribute("error", "Sorry! Your login details do not much");
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                            break;
                        }
                    
                    }catch(ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                    }
                 
                    }else {
            
                        request.setAttribute("error", "Login details missing!");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                        break;
                    }  
                }
                
                case "logout": {
                    session.invalidate();
                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                    break;     
                }
            }

        %>
    </body>
</html>

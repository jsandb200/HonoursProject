<%@page import="java.sql.*" %>
<%
String action = request.getParameter("action");
            if(action.equals("Register")){
            
                String username = request.getParameter("userregister");
                String pw1 = request.getParameter("passregister");
                int wackahi = 0;
                int addihi = 0;
                int subihi = 0;

            try {


                // FIX/FIND RELATIVE PATH
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                String createTableSQL = "CREATE TABLE if not exists users " +
                                 "(username TEXT NOT NULL PRIMARY KEY,"+
                                 " password TEXT NOT NULL,"+
                                 " wackahighscore INTEGER,"+
                                 " addihighscore INTEGER,"+
                                 " subihighscore INTEGER)";      

                statement.executeUpdate(createTableSQL);
                
                
                


                String insertSQL = "INSERT INTO users (username, password, wackahighscore, addihighscore, subihighscore) " +
                                            "VALUES ('"
                                            +username+"', '"
                                            +pw1+"', "
                                            +wackahi+", "
                                            +addihi+", "
                                            +subihi+")";

                int updates = statement.executeUpdate(insertSQL);
               if (updates == 1) {
                    %>
                    <script >
                        window.location.href = "login.jsp";
                        alert("Account created successfully!\nPlease login.");
                    </script>
                    <%
                  }
                 connection.close();
            }
                catch(Exception e){
                    out.println(e);
                    }

                
            }
        if(action.equals("Login")){
            String username = request.getParameter("userlogin");
            String password = request.getParameter("passlogin");

            try {


                // FIX/FIND RELATIVE PATH
                Connection connection2 = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection2.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE username ='" + username + "' AND password ='" + password +"'");
                if(resultSet.next()){
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");

                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    session.setAttribute("wackahighscore", wackahigh);
                    session.setAttribute("addihighscore", addihigh);
                    session.setAttribute("subihighscore", subihigh);
                    response.sendRedirect("hub.jsp");
                }
                else {
                    %>
                    <script >
                        window.location.href = "login.jsp";
                        alert("Username and password do not match.\nPlease Try again.");
                       
                    </script>
                    <%
                }
                connection2.close();
            }
        catch(Exception e){
            out.println(e);
        }

        

        }
            %>
<%@ page import="java.sql.*" %>
<% 

int wackaHigh = (Integer)session.getAttribute("wackahighscore");
String userName = (String)session.getAttribute("username"); 
                
int javascore = Integer.parseInt(request.getParameter("score"));

try {
        Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
        Statement statement = connection.createStatement();
        String updatehighscore = "UPDATE users SET wackahighscore = " + javascore + " WHERE username = '"+ userName + "';";

        statement.executeUpdate(updatehighscore);

        session.setAttribute("wackahighscore", javascore);

        connection.close();

    }
    catch(Exception e){
        out.println(e);
    }

%>
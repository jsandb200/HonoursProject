<%@ page import="java.sql.*" %>
<% 

int addiHigh = (Integer)session.getAttribute("addihighscore");
String userName = (String)session.getAttribute("username"); 
                
int javascore = Integer.parseInt(request.getParameter("score"));

try {
        Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
        Statement statement = connection.createStatement();
        String updatehighscore = "UPDATE users SET addihighscore = " + javascore + " WHERE username = '"+ userName + "';";

        statement.executeUpdate(updatehighscore);

        session.setAttribute("addihighscore", javascore);

        connection.close();

    }
    catch(Exception e){
        out.println(e);
    }

%>
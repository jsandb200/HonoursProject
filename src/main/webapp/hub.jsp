<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
    </head>
    
    <body style="background-image: url(images/swamp2.jpg); background-size: cover;" >
       
       <div class="title"></div>
       
            <div class="flexcontainer" id="hubgames">
              <div id="wackamole" class="gameicon">
                <h2>Whack-a-Number</h2>
              </div>
              <div id="addigator" class="gameicon">
                <h2>Add-igator</h2>
              </div>
              <div id="subigator" class="gameicon">
                <h2>Sub-igator</h2>
              </div>

            </div>

        <button onclick="gotoleaderboard()" class="button" style="position: absolute; width:10%; height: 15%; top: 64%; left: 3%; padding: 0;">Leaderboard</button>
       
        <button onclick="back()" class="button" style="position: absolute; width:10%; height: 15%; top: 80%; left: 3%; padding: 0;">Logout</button>



       <script>
       
       document.getElementById("wackamole").addEventListener("click", wackanumber);
       document.getElementById("addigator").addEventListener("click", addigator);
       document.getElementById("subigator").addEventListener("click", subigator);


       function wackanumber() {
        window.location = "whackanumber.jsp"
       }
        function addigator() {
        window.location = "addigator.jsp"
       }
       function subigator() {
        window.location = "subigator.jsp"
       }

       function back(){
                window.location.href = "login.jsp";
            }

       function gotoleaderboard() {
        window.location.href = "leaderboard.jsp";
       }

    <%@page import="java.sql.*" %>
    <%
      String userName = (String)session.getAttribute("username");
      int addiHigh = (Integer)session.getAttribute("addihighscore");
      int wackaHigh = (Integer)session.getAttribute("wackahighscore");
      int subiHigh = (Integer)session.getAttribute("subihighscore");


%> console.log("<%= userName%>"); 
console.log("<%= addiHigh%>"); 
console.log("<%= wackaHigh%>"); 
console.log("<%= subiHigh%>"); 

      




       
       </script>
    </body>

</html>

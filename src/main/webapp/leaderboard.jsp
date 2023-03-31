<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
    </head>
    
    <body style="background-image: url(images/swamp2.jpg); background-size: cover;" >
       
       <div class="title"></div>

       <div id="boardwacka" onclick="displayWackaDESC()" class="boardbutton" style="left: 20%; top: 30%;"><p class="center">Whack-a-Number</p></div>
       <div id="boardaddi" onclick="displayAddiDESC()" class="boardbutton" style="left: 36%; top: 30%;"><p class="center">Add-igator (Solo)</p></div>
       <div id="boardsubi" onclick="displaySubiDESC()" class="boardbutton" style="left: 52%; top: 30%;"><p class="center">Sub-igator (Solo)</p></div>

       <table class="center" id="leaderboard">
        
        <tr>
            <th colspan="5" id="boardtitle">Leaderboard</th>
        </tr>
        
        
        <tr id="boardgames">
            <th style="width: 10%;">Ranking</th>
            <th style="width: 30%;">Username</th> 
            <th style="width: 20%;" id="boardwackaheader">Whack-a-Number</th> 
            <th style="width: 20%;" id="boardaddiheader">Add-igator</th> 
            <th style="width: 20%;" id="boardsubiheader">Sub-igator</th> 
        </tr>
        
        
       </table>
       
       <button onclick="back()" class="button" id="leaderback" style="position: absolute; width:8%; height: 10%; top: 88%; left: 1%; padding: 0;">Back</button>
           
       <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>    
       <script>
       <%@ page import="java.sql.*" %>
       <%@ page import="java.util.List" %>
       <%@ page import="java.util.ArrayList" %>
       

       var table = document.getElementById("leaderboard");
       var row;
       var cell0;
       var cell1;
       var cell2;
       var cell3;
       var cell4;
       var wacka = document.getElementById("boardwackaheader");
       var addi = document.getElementById("boardaddiheader");
       var subi = document.getElementById("boardsubiheader");
       var wackabut = document.getElementById("boardwacka");
       var addibut = document.getElementById("boardaddi");
       var subibut = document.getElementById("boardsubi");
       var wackacols;
       var addicols;
       var subicols;
      
                

      
       function back(){
                window.location.href = "hub.jsp";
            }

        
       






            function displayWackaDESC() {


               addi.style.backgroundColor = "beige";
               subi.style.backgroundColor = "beige";
               boardsubi.classList.remove("active");
               boardaddi.classList.remove("active");
               boardwacka.classList.add("active");
                
                var numRows = table.rows.length;
                for (var i = numRows - 1; i > 1; i--) {
                    table.deleteRow(i);
                }

                

                
        <%      
            String userName = (String)session.getAttribute("username");
            int addiHigh = (Integer)session.getAttribute("addihighscore");
            int wackaHigh = (Integer)session.getAttribute("wackahighscore");
            
            

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY wackahighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        %>
                        row = table.insertRow();
                        cell0 = row.insertCell(0);
                        cell1 = row.insertCell(1);
                        cell2 = row.insertCell(2);
                        cell3 = row.insertCell(3);
                        cell4 = row.insertCell(4);

                        cell2.setAttribute("class", "wackacol");
                        cell3.setAttribute("class", "addicol");
                        cell4.setAttribute("class", "subicol");

                        cell0.innerHTML = <%=i%>+1;
                        cell1.innerHTML = "<%=userList.get(i)%>";
                        cell2.innerHTML = "<%=wackaList.get(i)%>";
                        cell3.innerHTML = "<%=addiList.get(i)%>";
                        cell4.innerHTML = "<%=subiList.get(i)%>";

                        if("<%=userList.get(i)%>" == '<%=userName%>'){
                            cell0.style.border = "solid";
                            cell0.style.borderRight = "none";
                            cell1.style.borderTop = "solid";
                            cell1.style.borderBottom = "solid";
                            cell2.style.borderTop = "solid";
                            cell2.style.borderBottom = "solid";
                            cell3.style.borderTop = "solid";
                            cell3.style.borderBottom = "solid";
                            cell4.style.border = "solid";
                            cell4.style.borderLeft = "none";

                        }

                        wackacols = document.querySelectorAll(".wackacol");
                        addicols = document.querySelectorAll(".addicol");
                        subicols = document.querySelectorAll(".subicol");
                        <%
                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        %>
        
                wacka.style.backgroundColor = "khaki";
                for(let i = 0; i<wackacols.length;i++){
                    wackacols[i].style.backgroundColor = "khaki";
                }

            }















function displayAddiDESC() {

                wacka.style.backgroundColor = "beige";
                subi.style.backgroundColor = "beige";
                boardsubi.classList.remove("active");
                boardwacka.classList.remove("active");
                boardaddi.classList.add("active");
                
                var numRows = table.rows.length;
                for (var i = numRows - 1; i > 1; i--) {
                    table.deleteRow(i);
                }
                
        <%      

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY addihighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        %>
                        row = table.insertRow();
                        cell0 = row.insertCell(0);
                        cell1 = row.insertCell(1);
                        cell2 = row.insertCell(2);
                        cell3 = row.insertCell(3);
                        cell4 = row.insertCell(4);

                        cell2.setAttribute("class", "wackacol");
                        cell3.setAttribute("class", "addicol");
                        cell4.setAttribute("class", "subicol");

                        cell0.innerHTML = <%=i%>+1;
                        cell1.innerHTML = "<%=userList.get(i)%>";
                        cell2.innerHTML = "<%=wackaList.get(i)%>";
                        cell3.innerHTML = "<%=addiList.get(i)%>";
                        cell4.innerHTML = "<%=subiList.get(i)%>";

                        if("<%=userList.get(i)%>" == '<%=userName%>'){
                          cell0.style.border = "solid";
                            cell0.style.borderRight = "none";
                            cell1.style.borderTop = "solid";
                            cell1.style.borderBottom = "solid";
                            cell2.style.borderTop = "solid";
                            cell2.style.borderBottom = "solid";
                            cell3.style.borderTop = "solid";
                            cell3.style.borderBottom = "solid";
                            cell4.style.border = "solid";
                            cell4.style.borderLeft = "none";

                        }

                        wackacols = document.querySelectorAll(".wackacol");
                        addicols = document.querySelectorAll(".addicol");
                        subicols = document.querySelectorAll(".subicol");
                        <%
                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        %>

                addi.style.backgroundColor = "khaki";
                for(let i = 0; i<addicols.length;i++){
                    addicols[i].style.backgroundColor = "khaki";
                }
            }










            function displaySubiDESC() {

                addi.style.backgroundColor = "beige";
                wacka.style.backgroundColor = "beige";
                boardwacka.classList.remove("active");
                boardaddi.classList.remove("active");
                boardsubi.classList.add("active");
                
                var numRows = table.rows.length;
                for (var i = numRows - 1; i > 1; i--) {
                    table.deleteRow(i);
                }
                
        <%      

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY subihighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        %>
                        row = table.insertRow();
                        cell0 = row.insertCell(0);
                        cell1 = row.insertCell(1);
                        cell2 = row.insertCell(2);
                        cell3 = row.insertCell(3);
                        cell4 = row.insertCell(4);

                        cell2.setAttribute("class", "wackacol");
                        cell3.setAttribute("class", "addicol");
                        cell4.setAttribute("class", "subicol");

                        cell0.innerHTML = <%=i%>+1;
                        cell1.innerHTML = "<%=userList.get(i)%>";
                        cell2.innerHTML = "<%=wackaList.get(i)%>";
                        cell3.innerHTML = "<%=addiList.get(i)%>";
                        cell4.innerHTML = "<%=subiList.get(i)%>";

                        if("<%=userList.get(i)%>" == '<%=userName%>'){
                          cell0.style.border = "solid";
                            cell0.style.borderRight = "none";
                            cell1.style.borderTop = "solid";
                            cell1.style.borderBottom = "solid";
                            cell2.style.borderTop = "solid";
                            cell2.style.borderBottom = "solid";
                            cell3.style.borderTop = "solid";
                            cell3.style.borderBottom = "solid";
                            cell4.style.border = "solid";
                            cell4.style.borderLeft = "none";

                        }

                        wackacols = document.querySelectorAll(".wackacol");
                        addicols = document.querySelectorAll(".addicol");
                        subicols = document.querySelectorAll(".subicol");
                        <%
                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        %>

                subi.style.backgroundColor = "khaki";
                for(let i = 0; i<subicols.length;i++){
                    subicols[i].style.backgroundColor = "khaki";
                }
            }


           

            displayWackaDESC();


            
       



       </script>
    </body>

</html>

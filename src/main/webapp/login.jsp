<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
        <%@page  import="java.sql.*" %>
        <%@page import="org.sqlite.*" %>
    </head>
    
    <body style="background-image: url(images/swamp2.jpg); background-size: cover;">
    
    
    <div class="title"></div>

    <div class="flexcontainer">
        <form id="logincontainer" action="validate.jsp" method="POST" name="loginform">
            <h2>Login to Existing Account</h2>
            <input id="userlogin" type="text" placeholder="Username" class="logininput" name="userlogin"/>
            <input id="passlogin" type="password" placeholder="Password" class="logininput" name="passlogin"/>
            <input type="submit" value="Login" name="action" class="loginbutton" id="loginbutton" disabled/>
                

        </form>
        <div class="center" id="or">
            <h2 class="center">or<h2>
        </div>
        <form id="registercontainer" action="validate.jsp" method="POST" name="registerform">
            <h2>Create New Account</h2>
            <input id="userregister" type="text" placeholder="Username" class="registerinput" name="userregister"/>
            <input id="passregister" type="password" placeholder="Password" class="registerinput"  name="passregister"/>
            <input id="passregister2" type="password" placeholder="Confirm Password" class="registerinput" />
            <input type="submit" value="Register" name="action" class="registerbutton" id="registerbutton" disabled/>


        </form>
    </div>

    <button onclick="back()" class="button" style="position: absolute; width:10%; height: 15%; top: 80%; left: 3%; padding: 0; ">Back</button>
        
        

        

           
        


        <script>
          
           
             

    
      
            


            

           var userlogin = document.getElementById("userlogin");
           var passlogin = document.getElementById("passlogin");
           var loginbutton = document.getElementById("loginbutton");

           var userregister = document.getElementById("userregister");
           var passregister = document.getElementById("passregister");
           var passregister2 = document.getElementById("passregister2");
           var registerbutton = document.getElementById("registerbutton");
           
           var inputs = document.querySelectorAll("input");
           

      

      


            for(let i=0;i<inputs.length;i++){
                inputs[i].addEventListener("keyup", function (){
                    if(userlogin.value != "" && passlogin.value != ""){
                        loginbutton.disabled = false;
                        loginbutton.style.backgroundColor = "#508146";
                        loginbutton.style.cursor = "pointer";
                    }
                    else{
                        loginbutton.disabled = true;
                        loginbutton.style.backgroundColor = "gray";
                        loginbutton.style.cursor = "default";
                    };


                    if(userregister.value != "" && passregister.value == passregister2.value && passregister.value != ""){
                        registerbutton.disabled = false;
                        registerbutton.style.backgroundColor = "#508146";
                        registerbutton.style.cursor = "pointer";
                        
                    }
                    else {
                        registerbutton.disabled = true;
                        registerbutton.style.backgroundColor = "gray";
                        registerbutton.style.cursor = "default";
                        
                    }



                });
            }


            function back(){
                window.location.href = "index.jsp";
            }
          


          
             

           




   


        </script>
    </body>

</html>

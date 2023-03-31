<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
        <link rel="stylesheet" href="styling/addigator.css">
    </head>
    
    <body>
    
    

        <div class="gamecontainer center" id="addicontainer">

        <img src="images/explosion.gif" class="center hidden" style="left: 91%; top:18%; z-index: 10;" id="explosion1">
        <img src="images/explosion.gif" class="center hidden" style="left: 91%; top:38%; z-index: 10;" id="explosion2">
        
        <button onclick="back()" id="addiback" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            <div id="addigamemode">
                <h1>Add-igator</h1>

                <div class="flexcontainer">
                <div id="addionep" class="gameicon"><h2 class="center" style="position: relative; text-align: center;">1 Player</h2></div>
                <div id="additwop" class="gameicon"><h2 class="center" style="position: relative; text-align: center;">2 Players</h2></div>
                </div>

                
            </div>
            
            <div id="addisingleplayerintro" class="hidden">
                <h1>Singleplayer instructions</h1>
                <h2>Get the alligator to the finish line as fast as possible!</h2>
                <h2>Use your keyboard to type in your answers.</h2>
                <h2>Good luck!</h2>
                <button class="button center" onclick="singleplayerstart()">Start</button>

                <button onclick="back2()" id="addiback2" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            </div>

            <div id="addisingle" class="hidden">
                <div id="additimerbox">Elapsed time: <div id="additimer" style="display: inline;">0</div></div>
                <div id="additrack">
                    <div id="addigatorgator" class="addigatorgator"></div>
                </div>
                <h1 id="addiquestion" class="center"></h1>
                <h1 id="addiwin" class="hidden center" style="top: 30%;">You win!</h1>
                <div id="addinewhighscore" style="top: 38%;" class="hidden center">New Highscore !</div>
                <%-- <h1 id="addilose" class="hidden center" style="top: 30%;">You lose...</h1> --%>
                <button class="button hidden center" id="addigameend" onclick="{location.reload();}">Continue</button>
                
                <input type="text" id="addiinput" autofocus/>
            </div>




            <div id="addimultiplayerintro" class="hidden">
                <h1>Multiplayer instructions</h1>
                <h2>Win the race by being the first to get your alligator to the finish line!</h2>
                <h2>You will each have to choose between 4 possible answers.</h2>
                <h2>Use the keys shown to select your answers.</h2>
                <h2>Good luck!</h2>
                <button class="button center" onclick="multiplayerstart()" style="position: relative;">Start</button>
                <h2 style="position:absolute; left: 20%; top: 60%;">Player 1 use:</h2>
                <img id="keyboard1" src="images/keyboard1.png"/>
                <h2 style="position: absolute; left: 70%; top: 60%;">Player 2 use:</h2>
                <img id="keyboard2" src="images/keyboard2.png"/>

                <button onclick="back2()" id="addiback3" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            </div>



            <div id="addimulti" class="hidden">

            
                
                <div id="additrack2">
                    <div id="addigatorgator2" class="addigatorgator"></div>
                </div>
                <div id="additrack3">
                    <div id="addigatorgator3" class="addigatorgator"></div>
                </div>
                <h1 id="addiquestion2" class="center" style="left: 25%;"></h1>
                <h1 id="addiquestion3" class="center" style="left: 75%;"></h1>
                <div id="addianswers1" class="addianswers">
                    <div class="addianswer">
                        <div class="keybind">1</div>
                        <p id="addianswer1" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">2</div>
                        <p id="addianswer2" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">3</div>
                        <p id="addianswer3" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">4</div>
                        <p id="addianswer4" class="center"></p>
                    </div>
                </div>
                <div id="addianswers2" class="addianswers">
                    <div class="addianswer">
                        <div class="keybind">7</div>
                        <p id="addianswer5" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">8</div>
                        <p id="addianswer6" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">9</div>
                        <p id="addianswer7" class="center"></p>
                    </div>
                    <div class="addianswer">
                        <div class="keybind">0</div>
                        <p id="addianswer8" class="center"></p>
                    </div>
                </div>
                <h1 id="addiwin1" class="hidden center" style="top: 30%;">Player 1 wins!</h1>
                <h1 id="addiwin2" class="hidden center" style="top: 30%;">Player 2 wins!</h1>
                <button class="button hidden center" id="addigameend2" onclick="{location.reload();}">Play again</button>
                
                
                    
            </div>


        </div>

        <audio src="sounds/ding.mp3" id="ding"></audio>
        <audio src="sounds/windmill_hut_zelda.mp3" id="windmill"></audio>


        <button onclick="quit()" class="button hidden" id="addiquit" style="position: absolute; width:8%; height: 10%; top: 88%; left: 1%; padding: 0;">Quit</button>









        <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        <script>
        <%@ page import="java.sql.*" %>
        <% int addiHigh = (Integer)session.getAttribute("addihighscore"); %>

            var gamemode = document.getElementById("addigamemode");
            var singleintro = document.getElementById("addisingleplayerintro");
            var multiintro = document.getElementById("addimultiplayerintro");
            var single = document.getElementById("addisingle");
            var multi = document.getElementById("addimulti");
            var addiinput = document.getElementById("addiinput");
            var addiquestion = document.getElementById("addiquestion");
            var additimerbox = document.getElementById("additimerbox");
            var stage = 1;
            var answer = 0;
            var gator = document.getElementById("addigatorgator");
            var additrack = document.getElementById("additrack");
            var addiwin = document.getElementById("addiwin");
            var addilose = document.getElementById("addilose");
            var addiquit = document.getElementById("addiquit");
            var addinewhighscore = document.getElementById("addinewhighscore");
            var score = 0;

            var addiquestion1 = document.getElementById("addiquestion2");
            var addiquestion2 = document.getElementById("addiquestion3");
            var addianswers1 = document.getElementById("addianswers1");
            var addianswers2 = document.getElementById("addianswers2");
            var addianswer1 = document.getElementById("addianswer1");
            var addianswer2 = document.getElementById("addianswer2");
            var addianswer3 = document.getElementById("addianswer3");
            var addianswer4 = document.getElementById("addianswer4");
            var addianswer5 = document.getElementById("addianswer5");
            var addianswer6 = document.getElementById("addianswer6");
            var addianswer7 = document.getElementById("addianswer7");
            var addianswer8 = document.getElementById("addianswer8");
            var stage1 = 1;
            var stage2 = 1;
            var answer1 = 0;
            var answer2 = 0;
            var gator1 = document.getElementById("addigatorgator2");
            var gator2 = document.getElementById("addigatorgator3");
            var additrack1 = document.getElementById("additrack2");
            var additrack2 = document.getElementById("additrack3");
            var addiwin1 = document.getElementById("addiwin1");
            var addiwin2 = document.getElementById("addiwin2");
            var r1 = 0;
            var r2 = 0;
            var explosion1 = document.getElementById("explosion1");
            var explosion2 = document.getElementById("explosion2");

            var soundding = document.getElementById("ding");
            var soundwindmill = document.getElementById("windmill");

            soundding.volume = 0.2;
            soundwindmill.volume = 0.2;



            document.getElementById("addionep").addEventListener("click", singleplayer);
            document.getElementById("additwop").addEventListener("click", multiplayer);

            function singleplayer(){
                gamemode.classList.add("hidden");
                singleintro.classList.remove("hidden");
                document.getElementById("addiback").classList.add("hidden");
            }

            function multiplayer(){
                gamemode.classList.add("hidden");
                multiintro.classList.remove("hidden");
                document.getElementById("addiback").classList.add("hidden");
            }
        
            

            function back(){
                window.location.href = "hub.jsp";
            }

            function back2() {
                window.location.href = "addigator.jsp";
            }












            function singleplayerstart(){
                singleintro.classList.add("hidden");
                single.classList.remove("hidden");
                addiquit.classList.remove("hidden");
                addiinput.focus();
                newquestion();
                soundwindmill.currentTime=0;
                soundwindmill.play();

                addiinput.addEventListener("keydown", (e) => {
                    setTimeout(function(){
                        if(parseInt(addiinput.value) === answer){
                            soundding.currentTime = 0;
                            addiinput.style.color = "green";
                            soundding.play();
                            setTimeout(function(){
                                addiinput.value = "";
                                stage++;
                                advancegator();
                                newquestion();
                            }, 500);
                        }
                    }, 50);
                });

                let seconds = setInterval(function (){
                    document.getElementById("additimer").innerHTML = parseInt(document.getElementById("additimer").innerHTML) +1;
                }, 1000)


                function randomIntBetween(min, max) { 
                    return Math.floor(Math.random() * (max - min + 1) + min)
                }


                function newquestion(){
                    addiinput.style.color = "red";
                    if(stage === 1){
                        let x = randomIntBetween(0, 10);
                        let y = randomIntBetween(0, 10);
                        addiquestion.innerHTML = x +" + "+ y;
                        answer = x + y;
                    }
                    if(stage === 2){
                        let x = randomIntBetween(0, 15);
                        let y = randomIntBetween(0, 15);
                        addiquestion.innerHTML = x +" + "+ y;
                        answer = x + y;
                    }
                    if(stage === 3){
                        let x = randomIntBetween(0, 20);
                        let y = randomIntBetween(0, 20);
                        addiquestion.innerHTML = x +" + "+ y;
                        answer = x + y;
                    }
                    if(stage === 4){
                        let x = randomIntBetween(0, 30);
                        let y = randomIntBetween(0, 30);
                        addiquestion.innerHTML = x +" + "+ y;
                        answer = x + y;
                    }
                    if(stage === 5){
                        let x = randomIntBetween(0, 50);
                        let y = randomIntBetween(0, 50);
                        addiquestion.innerHTML = x +" + "+ y;
                        answer = x + y;
                    }
                }


                function advancegator(){
                    if(stage === 2){
                        gator.style.animation = "slideright1 1.5s";
                        gator.style.left = "20%";
                    }
                    if(stage === 3){
                        gator.style.animation = "slideright2 1.5s";
                        gator.style.left = "40%";
                    }
                    if(stage === 4){
                        gator.style.animation = "slideright3 1.5s";
                        gator.style.left = "60%";
                    }
                    if(stage === 5){
                        gator.style.animation = "slideright4 1.5s";
                        gator.style.left = "80%";
                        
                    }
                    if(stage === 6){
                        gator.style.animation = "slideright5 1.5s";
                        gator.style.left = "100%";
                        clearInterval(seconds);
                        setTimeout(function (){
                           win() 
                        },1500);                        
                    }
                }

                

                function win(){
                    document.getElementById("addigameend").classList.remove("hidden");
                    additrack.classList.add("hidden");
                    addiwin.classList.remove("hidden");
                    addiinput.classList.add("hidden");
                    additimerbox.classList.add("center");
                    score = 100 - parseInt(document.getElementById("additimer").innerHTML);
                    additimerbox.innerHTML = "Score: "+score;
                    additimerbox.style.top = "35%";
                    soundwindmill.pause();
                    addiquit.classList.add("hidden");
                    
                    if(score > <%=addiHigh%>){
                            
                            
                            $.ajax({
                                url: "addigatorscore.jsp?score=" + score,
                                success: function(response) {
                                    console.log("AJAX request succeeded");
                                },
                                error: function(xhr, status, error) {
                                    console.log("AJAX request failed");
                                }
                            });

                            addinewhighscore.classList.remove("hidden");
                            

                        }
                }

                

            }

















            function multiplayerstart(){
                multiintro.classList.add("hidden");
                multi.classList.remove("hidden");
                addiquit.classList.remove("hidden");
               
                newquestion1();
                newquestion2();
                soundwindmill.currentTime=0;
                soundwindmill.play();


                window.addEventListener("keyup", addikeyup); 
                function addikeyup(e){
                    if(e.which === 49 && r1 === 1){
                        stage1++;
                        addianswer1.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            addianswer1.parentElement.style.backgroundColor = "";
                        }, 500);
                        
                    }
                    if(e.which === 49 && r1 !== 1){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            addianswer1.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                addianswer1.parentElement.style.backgroundColor = "";
                            }, 500);
                        }
                        else {
                            addianswer1.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer1.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 50 && r1 === 2){
                        stage1++;
                        addianswer2.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            addianswer2.parentElement.style.backgroundColor = "";
                        }, 500);
                        
                    }
                    if(e.which === 50 && r1 !== 2){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            addianswer2.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                addianswer2.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer2.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer2.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 51 && r1 === 3){
                        stage1++;
                        addianswer3.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            addianswer3.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 51 && r1 !== 3){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            addianswer3.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                addianswer3.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer3.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer3.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 52 && r1 === 4){
                        stage1++;
                        addianswer4.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            addianswer4.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 52 && r1 !== 4){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            addianswer4.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                addianswer4.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer4.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer4.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }



                    if(e.which === 55 && r2 === 1){
                        stage2++;
                        addianswer5.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            addianswer5.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 55 && r2 !== 1){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            addianswer5.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                addianswer5.parentElement.style.backgroundColor = "";  
                            }, 500);
                            
                        }
                        else {
                            addianswer5.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer5.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 56 && r2 === 2){
                        stage2++;
                        addianswer6.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            addianswer6.parentElement.style.backgroundColor = "";  
                        }, 500);
                        
                    }
                    if(e.which === 56 && r2 !== 2){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            addianswer6.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                addianswer6.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer6.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer6.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 57 && r2 === 3){
                        stage2++;
                        addianswer7.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            addianswer7.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 57 && r2 !== 3){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            addianswer7.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                addianswer7.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer7.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer7.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 48 && r2 === 4){
                        stage2++;
                        addianswer8.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            addianswer8.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 48 && r2 !== 4){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            addianswer8.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                            addianswer8.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            addianswer8.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                addianswer8.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                };



                function randomIntBetween1(min, max) { 
                    var randint1 = Math.floor(Math.random() * (max - min + 1) + min);
                    if(randint1 === answer1){
                        return randomIntBetween1(min, max);
                    }
                    else{
                        return randint1;
                    }
                }

                function randomIntBetween2(min, max) { 
                    var randint2 = Math.floor(Math.random() * (max - min + 1) + min);
                    if(randint2 === answer2){
                        return randomIntBetween2(min, max);
                    }
                    else{
                        return randint2;
                    }
                }

                function random1234(){
                    return Math.floor(Math.random() * 4)+1;
                }


                function newquestion1(){
                    r1 = random1234();
                    
                    if(stage1 === 1){
                        let x = randomIntBetween1(0, 10);
                        let y = randomIntBetween1(0, 10);
                        addiquestion1.innerHTML = x +" + "+ y;
                        answer1 = x + y;
                        if(r1 === 1){
                            addianswer1.innerHTML = answer1;
                            addianswer2.innerHTML = randomIntBetween1(0,20);
                            addianswer3.innerHTML = randomIntBetween1(0,20);
                            addianswer4.innerHTML = randomIntBetween1(0,20);
                        }
                        else if(r1 === 2){
                            addianswer1.innerHTML = randomIntBetween1(0,20);
                            addianswer2.innerHTML = answer1;
                            addianswer3.innerHTML = randomIntBetween1(0,20);
                            addianswer4.innerHTML = randomIntBetween1(0,20);

                        }
                        else if(r1 === 3){
                            addianswer3.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,20);
                            addianswer2.innerHTML = randomIntBetween1(0,20);
                            addianswer4.innerHTML = randomIntBetween1(0,20);
                        }
                        else if(r1 === 4){
                            addianswer4.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,20);
                            addianswer2.innerHTML = randomIntBetween1(0,20);
                            addianswer3.innerHTML = randomIntBetween1(0,20);
                        }
                    }
                    if(stage1 === 2){
                        let x = randomIntBetween1(0, 15);
                        let y = randomIntBetween1(0, 15);
                        addiquestion1.innerHTML = x +" + "+ y;
                        answer1 = x + y;
                        if(r1 === 1){
                            addianswer1.innerHTML = answer1;
                            addianswer2.innerHTML = randomIntBetween1(0,30);
                            addianswer3.innerHTML = randomIntBetween1(0,30);
                            addianswer4.innerHTML = randomIntBetween1(0,30);
                        }
                        else if(r1 === 2){
                            addianswer1.innerHTML = randomIntBetween1(0,30);
                            addianswer2.innerHTML = answer1;
                            addianswer3.innerHTML = randomIntBetween1(0,30);
                            addianswer4.innerHTML = randomIntBetween1(0,30);

                        }
                        else if(r1 === 3){
                            addianswer3.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,30);
                            addianswer2.innerHTML = randomIntBetween1(0,30);
                            addianswer4.innerHTML = randomIntBetween1(0,30);
                        }
                        else if(r1 === 4){
                            addianswer4.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,30);
                            addianswer2.innerHTML = randomIntBetween1(0,30);
                            addianswer3.innerHTML = randomIntBetween1(0,30);
                        }
                    }
                    if(stage1 === 3){
                        let x = randomIntBetween1(0, 20);
                        let y = randomIntBetween1(0, 20);
                        addiquestion1.innerHTML = x +" + "+ y;
                        answer1 = x + y;
                        if(r1 === 1){
                            addianswer1.innerHTML = answer1;
                            addianswer2.innerHTML = randomIntBetween1(0,40);
                            addianswer3.innerHTML = randomIntBetween1(0,40);
                            addianswer4.innerHTML = randomIntBetween1(0,40);
                        }
                        else if(r1 === 2){
                            addianswer1.innerHTML = randomIntBetween1(0,40);
                            addianswer2.innerHTML = answer1;
                            addianswer3.innerHTML = randomIntBetween1(0,40);
                            addianswer4.innerHTML = randomIntBetween1(0,40);

                        }
                        else if(r1 === 3){
                            addianswer3.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,40);
                            addianswer2.innerHTML = randomIntBetween1(0,40);
                            addianswer4.innerHTML = randomIntBetween1(0,40);
                        }
                        else if(r1 === 4){
                            addianswer4.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,40);
                            addianswer2.innerHTML = randomIntBetween1(0,40);
                            addianswer3.innerHTML = randomIntBetween1(0,40);
                        }
                    }
                    if(stage1 === 4){
                        let x = randomIntBetween1(0, 30);
                        let y = randomIntBetween1(0, 30);
                        addiquestion1.innerHTML = x +" + "+ y;
                        answer1 = x + y;
                        if(r1 === 1){
                            addianswer1.innerHTML = answer1;
                            addianswer2.innerHTML = randomIntBetween1(0,60);
                            addianswer3.innerHTML = randomIntBetween1(0,60);
                            addianswer4.innerHTML = randomIntBetween1(0,60);
                        }
                        else if(r1 === 2){
                            addianswer1.innerHTML = randomIntBetween1(0,60);
                            addianswer2.innerHTML = answer1;
                            addianswer3.innerHTML = randomIntBetween1(0,60);
                            addianswer4.innerHTML = randomIntBetween1(0,60);

                        }
                        else if(r1 === 3){
                            addianswer3.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,60);
                            addianswer2.innerHTML = randomIntBetween1(0,60);
                            addianswer4.innerHTML = randomIntBetween1(0,60);
                        }
                        else if(r1 === 4){
                            addianswer4.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,60);
                            addianswer2.innerHTML = randomIntBetween1(0,60);
                            addianswer3.innerHTML = randomIntBetween1(0,60);
                        }
                    }
                    if(stage1 === 5){
                        let x = randomIntBetween1(0, 50);
                        let y = randomIntBetween1(0, 50);
                        addiquestion1.innerHTML = x +" + "+ y;
                        answer1 = x + y;
                        if(r1 === 1){
                            addianswer1.innerHTML = answer1;
                            addianswer2.innerHTML = randomIntBetween1(0,100);
                            addianswer3.innerHTML = randomIntBetween1(0,100);
                            addianswer4.innerHTML = randomIntBetween1(0,100);
                        }
                        else if(r1 === 2){
                            addianswer1.innerHTML = randomIntBetween1(0,100);
                            addianswer2.innerHTML = answer1;
                            addianswer3.innerHTML = randomIntBetween1(0,100);
                            addianswer4.innerHTML = randomIntBetween1(0,100);

                        }
                        else if(r1 === 3){
                            addianswer3.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,100);
                            addianswer2.innerHTML = randomIntBetween1(0,100);
                            addianswer4.innerHTML = randomIntBetween1(0,100);
                        }
                        else if(r1 === 4){
                            addianswer4.innerHTML = answer1;
                            addianswer1.innerHTML = randomIntBetween1(0,100);
                            addianswer2.innerHTML = randomIntBetween1(0,100);
                            addianswer3.innerHTML = randomIntBetween1(0,100);
                        }
                    }
                }
                function newquestion2(){
                    r2 = random1234();
                    if(stage2 === 1){
                        let x = randomIntBetween2(0, 10);
                        let y = randomIntBetween2(0, 10);
                        addiquestion2.innerHTML = x +" + "+ y;
                        answer2 = x + y;
                        if(r2 === 1){
                            addianswer5.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,20);
                            addianswer7.innerHTML = randomIntBetween2(0,20);
                            addianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 2){
                            addianswer6.innerHTML = answer2;
                            addianswer5.innerHTML = randomIntBetween2(0,20);
                            addianswer7.innerHTML = randomIntBetween2(0,20);
                            addianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 3){
                            addianswer7.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,20);
                            addianswer5.innerHTML = randomIntBetween2(0,20);
                            addianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 4){
                            addianswer8.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,20);
                            addianswer7.innerHTML = randomIntBetween2(0,20);
                            addianswer5.innerHTML = randomIntBetween2(0,20);
                        }
                    }
                    if(stage2 === 2){
                        let x = randomIntBetween2(0, 15);
                        let y = randomIntBetween2(0, 15);
                        addiquestion2.innerHTML = x +" + "+ y;
                        answer2 = x + y;
                        if(r2 === 1){
                            addianswer5.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,30);
                            addianswer7.innerHTML = randomIntBetween2(0,30);
                            addianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 2){
                            addianswer6.innerHTML = answer2;
                            addianswer5.innerHTML = randomIntBetween2(0,30);
                            addianswer7.innerHTML = randomIntBetween2(0,30);
                            addianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 3){
                            addianswer7.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,30);
                            addianswer5.innerHTML = randomIntBetween2(0,30);
                            addianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 4){
                            addianswer8.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,30);
                            addianswer7.innerHTML = randomIntBetween2(0,30);
                            addianswer5.innerHTML = randomIntBetween2(0,30);
                        }
                    }
                    if(stage2 === 3){
                        let x = randomIntBetween2(0, 20);
                        let y = randomIntBetween2(0, 20);
                        addiquestion2.innerHTML = x +" + "+ y;
                        answer2 = x + y;
                        if(r2 === 1){
                            addianswer5.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,40);
                            addianswer7.innerHTML = randomIntBetween2(0,40);
                            addianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 2){
                            addianswer6.innerHTML = answer2;
                            addianswer5.innerHTML = randomIntBetween2(0,40);
                            addianswer7.innerHTML = randomIntBetween2(0,40);
                            addianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 3){
                            addianswer7.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,40);
                            addianswer5.innerHTML = randomIntBetween2(0,40);
                            addianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 4){
                            addianswer8.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,40);
                            addianswer7.innerHTML = randomIntBetween2(0,40);
                            addianswer5.innerHTML = randomIntBetween2(0,40);
                        }
                    }
                    if(stage2 === 4){
                        let x = randomIntBetween2(0, 30);
                        let y = randomIntBetween2(0, 30);
                        addiquestion2.innerHTML = x +" + "+ y;
                        answer2 = x + y;
                        if(r2 === 1){
                            addianswer5.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,60);
                            addianswer7.innerHTML = randomIntBetween2(0,60);
                            addianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 2){
                            addianswer6.innerHTML = answer2;
                            addianswer5.innerHTML = randomIntBetween2(0,60);
                            addianswer7.innerHTML = randomIntBetween2(0,60);
                            addianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 3){
                            addianswer7.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,60);
                            addianswer5.innerHTML = randomIntBetween2(0,60);
                            addianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 4){
                            addianswer8.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,60);
                            addianswer7.innerHTML = randomIntBetween2(0,60);
                            addianswer5.innerHTML = randomIntBetween2(0,60);
                        }
                    }
                    if(stage2 === 5){
                        let x = randomIntBetween2(0, 50);
                        let y = randomIntBetween2(0, 50);
                        addiquestion2.innerHTML = x +" + "+ y;
                        answer2 = x + y;
                        if(r2 === 1){
                            addianswer5.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,100);
                            addianswer7.innerHTML = randomIntBetween2(0,100);
                            addianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 2){
                            addianswer6.innerHTML = answer2;
                            addianswer5.innerHTML = randomIntBetween2(0,100);
                            addianswer7.innerHTML = randomIntBetween2(0,100);
                            addianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 3){
                            addianswer7.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,100);
                            addianswer5.innerHTML = randomIntBetween2(0,100);
                            addianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 4){
                            addianswer8.innerHTML = answer2;
                            addianswer6.innerHTML = randomIntBetween2(0,100);
                            addianswer7.innerHTML = randomIntBetween2(0,100);
                            addianswer5.innerHTML = randomIntBetween2(0,100);
                        }
                    }
                }

                function advancegator1(){
                    if(stage1 === 2){
                        gator1.style.animation = "slideright1 1.5s";
                        gator1.style.left = "20%";
                    }
                    if(stage1 === 3){
                        gator1.style.animation = "slideright2 1.5s";
                        gator1.style.left = "40%";
                    }
                    if(stage1 === 4){
                        gator1.style.animation = "slideright3 1.5s";
                        gator1.style.left = "60%";
                    }
                    if(stage1 === 5){
                        gator1.style.animation = "slideright4 1.5s";
                        gator1.style.left = "80%";
                        
                    }
                    if(stage1 === 6){
                        gator1.style.animation = "slideright5 1.5s";
                        gator1.style.left = "100%";
                        explosion1.classList.remove("hidden");
                        window.removeEventListener("keyup", addikeyup);
                        setTimeout(function (){
                            explosion1.classList.add("hidden");
                           win1() 
                        },1500);                        
                    }
                }
                function advancegator2(){
                    if(stage2 === 2){
                        gator2.style.animation = "slideright1 1.5s";
                        gator2.style.left = "20%";
                    }
                    if(stage2 === 3){
                        gator2.style.animation = "slideright2 1.5s";
                        gator2.style.left = "40%";
                    }
                    if(stage2 === 4){
                        gator2.style.animation = "slideright3 1.5s";
                        gator2.style.left = "60%";
                    }
                    if(stage2 === 5){
                        gator2.style.animation = "slideright4 1.5s";
                        gator2.style.left = "80%";
                        
                    }
                    if(stage2 === 6){
                        gator2.style.animation = "slideright5 1.5s";
                        gator2.style.left = "100%";
                        explosion2.classList.remove("hidden");
                        window.removeEventListener("keyup", addikeyup);
                        setTimeout(function (){
                            explosion2.classList.add("hidden");
                           win2() 
                        },1500);                        
                    }
                }


                function retreatgator1(){
                    if(stage1 === 1){
                        gator1.style.animation = "slideleft1 1.5s";
                        gator1.style.left = "0%";
                    }
                    if(stage1 === 2){
                        gator1.style.animation = "slideleft2 1.5s";
                        gator1.style.left = "20%";
                    }
                    if(stage1 === 3){
                        gator1.style.animation = "slideleft3 1.5s";
                        gator1.style.left = "40%";
                    }
                    if(stage1 === 4){
                        gator1.style.animation = "slideleft4 1.5s";
                        gator1.style.left = "60%";
                    }
                    
                    
                }
                function retreatgator2(){
                    if(stage2 === 1){
                        gator2.style.animation = "slideleft1 1.5s";
                        gator2.style.left = "0%";
                    }
                    if(stage2 === 2){
                        gator2.style.animation = "slideleft2 1.5s";
                        gator2.style.left = "20%";
                    }
                    if(stage2 === 3){
                        gator2.style.animation = "slideleft3 1.5s";
                        gator2.style.left = "40%";
                    }
                    if(stage2 === 4){
                        gator2.style.animation = "slideleft4 1.5s";
                        gator2.style.left = "60%";
                    }
                    
                    
                }


                function win1(){
                    document.getElementById("addigameend2").classList.remove("hidden");
                    additrack1.classList.add("hidden");
                    additrack2.classList.add("hidden");
                    addiwin1.classList.remove("hidden");
                    soundwindmill.pause();
                    addiquestion1.classList.add("hidden");
                    addiquestion2.classList.add("hidden");
                    addianswer1.parentElement.classList.add("hidden");
                    addianswer2.parentElement.classList.add("hidden");
                    addianswer3.parentElement.classList.add("hidden");
                    addianswer4.parentElement.classList.add("hidden");
                    addianswer5.parentElement.classList.add("hidden");
                    addianswer6.parentElement.classList.add("hidden");
                    addianswer7.parentElement.classList.add("hidden");
                    addianswer8.parentElement.classList.add("hidden");
                    addiquit.classList.add("hidden");
                }

                function win2(){
                    document.getElementById("addigameend2").classList.remove("hidden");
                    additrack1.classList.add("hidden");
                    additrack2.classList.add("hidden");
                    addiwin2.classList.remove("hidden");
                    soundwindmill.pause();
                    addiquestion1.classList.add("hidden");
                    addiquestion2.classList.add("hidden");
                    addianswer1.parentElement.classList.add("hidden");
                    addianswer2.parentElement.classList.add("hidden");
                    addianswer3.parentElement.classList.add("hidden");
                    addianswer4.parentElement.classList.add("hidden");
                    addianswer5.parentElement.classList.add("hidden");
                    addianswer6.parentElement.classList.add("hidden");
                    addianswer7.parentElement.classList.add("hidden");
                    addianswer8.parentElement.classList.add("hidden");
                    addiquit.classList.add("hidden");
                }
            }


            function quit(){
                window.location.href = "addigator.jsp";
            }

        </script>
    </body>

</html>

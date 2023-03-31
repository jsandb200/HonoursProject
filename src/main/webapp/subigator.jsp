<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
        <link rel="stylesheet" href="styling/subigator.css">
    </head>
    
    <body>
    
    

        <div class="gamecontainer center" id="subicontainer">

        <img src="images/explosion.gif" class="center hidden" style="left: 91%; top:18%; z-index: 10;" id="explosion3">
        <img src="images/explosion.gif" class="center hidden" style="left: 91%; top:38%; z-index: 10;" id="explosion4">
        
        <button onclick="back()" id="subiback" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            <div id="subigamemode">
                <h1>Sub-igator</h1>

                <div class="flexcontainer">
                <div id="subionep" class="gameicon"><h2 class="center" style="position: relative; text-align: center;">1 Player</h2></div>
                <div id="subitwop" class="gameicon"><h2 class="center" style="position: relative; text-align: center;">2 Players</h2></div>
                </div>

                
            </div>
            
            <div id="subisingleplayerintro" class="hidden">
                <h1>Singleplayer instructions</h1>
                <h2>Get the alligator to the finish line as fast as possible!</h2>
                <h2>Use your keyboard to type in your answers.</h2>
                <h2>Good luck!</h2>
                <button class="button center" onclick="singleplayerstart()">Start</button>

                <button onclick="back2()" id="subiback2" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            </div>

            <div id="subisingle" class="hidden">
                <div id="subitimerbox">Elapsed time: <div id="subitimer" style="display: inline;">0</div></div>
                <div id="subitrack">
                    <div id="subigatorgator" class="subigatorgator"></div>
                </div>
                <h1 id="subiquestion" class="center"></h1>
                <h1 id="subiwin" class="hidden center" style="top: 30%;">You win!</h1>
                <div id="subinewhighscore" style="top: 38%;" class="hidden center">New Highscore !</div>
               
                <button class="button hidden center" id="subigameend" onclick="{location.reload();}">Continue</button>
                
                <input type="text" id="subiinput" autofocus/>
            </div>




            <div id="subimultiplayerintro" class="hidden">
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

                <button onclick="back2()" id="subiback3" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0; ">Back</button>
            </div>



            <div id="subimulti" class="hidden">

            
                
                <div id="subitrack2">
                    <div id="subigatorgator2" class="subigatorgator"></div>
                </div>
                <div id="subitrack3">
                    <div id="subigatorgator3" class="subigatorgator"></div>
                </div>
                <h1 id="subiquestion2" class="center" style="left: 25%;"></h1>
                <h1 id="subiquestion3" class="center" style="left: 75%;"></h1>
                <div id="subianswers1" class="subianswers">
                    <div class="subianswer">
                        <div class="keybind">1</div>
                        <p id="subianswer1" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">2</div>
                        <p id="subianswer2" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">3</div>
                        <p id="subianswer3" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">4</div>
                        <p id="subianswer4" class="center"></p>
                    </div>
                </div>
                <div id="subianswers2" class="subianswers">
                    <div class="subianswer">
                        <div class="keybind">7</div>
                        <p id="subianswer5" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">8</div>
                        <p id="subianswer6" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">9</div>
                        <p id="subianswer7" class="center"></p>
                    </div>
                    <div class="subianswer">
                        <div class="keybind">0</div>
                        <p id="subianswer8" class="center"></p>
                    </div>
                </div>
                <h1 id="subiwin1" class="hidden center" style="top: 30%;">Player 1 wins!</h1>
                <h1 id="subiwin2" class="hidden center" style="top: 30%;">Player 2 wins!</h1>
                <button class="button hidden center" id="subigameend2" onclick="{location.reload();}">Play again</button>
                
                
                    
            </div>


        </div>

        <audio src="sounds/ding.mp3" id="ding"></audio>
        <audio src="sounds/windmill_hut_zelda.mp3" id="windmill"></audio>


        <button onclick="quit()" class="button hidden" id="subiquit" style="position: absolute; width:8%; height: 10%; top: 88%; left: 1%; padding: 0;">Quit</button>









        <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        <script>
        <%@ page import="java.sql.*" %>
        <% int subiHigh = (Integer)session.getAttribute("subihighscore"); %>

            var gamemode = document.getElementById("subigamemode");
            var singleintro = document.getElementById("subisingleplayerintro");
            var multiintro = document.getElementById("subimultiplayerintro");
            var single = document.getElementById("subisingle");
            var multi = document.getElementById("subimulti");
            var subiinput = document.getElementById("subiinput");
            var subiquestion = document.getElementById("subiquestion");
            var subitimerbox = document.getElementById("subitimerbox");
            var stage = 1;
            var answer = 0;
            var gator = document.getElementById("subigatorgator");
            var subitrack = document.getElementById("subitrack");
            var subiwin = document.getElementById("subiwin");
            var subilose = document.getElementById("subilose");
            var subiquit = document.getElementById("subiquit");
            var subinewhighscore = document.getElementById("subinewhighscore");
            var score = 0;

            var subiquestion1 = document.getElementById("subiquestion2");
            var subiquestion2 = document.getElementById("subiquestion3");
            var subianswers1 = document.getElementById("subianswers1");
            var subianswers2 = document.getElementById("subianswers2");
            var subianswer1 = document.getElementById("subianswer1");
            var subianswer2 = document.getElementById("subianswer2");
            var subianswer3 = document.getElementById("subianswer3");
            var subianswer4 = document.getElementById("subianswer4");
            var subianswer5 = document.getElementById("subianswer5");
            var subianswer6 = document.getElementById("subianswer6");
            var subianswer7 = document.getElementById("subianswer7");
            var subianswer8 = document.getElementById("subianswer8");
            var stage1 = 1;
            var stage2 = 1;
            var answer1 = 0;
            var answer2 = 0;
            var gator1 = document.getElementById("subigatorgator2");
            var gator2 = document.getElementById("subigatorgator3");
            var subitrack1 = document.getElementById("subitrack2");
            var subitrack2 = document.getElementById("subitrack3");
            var subiwin1 = document.getElementById("subiwin1");
            var subiwin2 = document.getElementById("subiwin2");
            var r1 = 0;
            var r2 = 0;
            
            var explosion1 = document.getElementById("explosion3");
            var explosion2 = document.getElementById("explosion4");

            var soundding = document.getElementById("ding");
            var soundwindmill = document.getElementById("windmill");

            soundding.volume = 0.2;
            soundwindmill.volume = 0.2;



            document.getElementById("subionep").addEventListener("click", singleplayer);
            document.getElementById("subitwop").addEventListener("click", multiplayer);

            function singleplayer(){
                gamemode.classList.add("hidden");
                singleintro.classList.remove("hidden");
                document.getElementById("subiback").classList.add("hidden");
            }

            function multiplayer(){
                gamemode.classList.add("hidden");
                multiintro.classList.remove("hidden");
                document.getElementById("subiback").classList.add("hidden");
            }
        
            

            function back(){
                window.location.href = "hub.jsp";
            }

            function back2() {
                window.location.href = "subigator.jsp";
            }












            function singleplayerstart(){
                singleintro.classList.add("hidden");
                single.classList.remove("hidden");
                subiquit.classList.remove("hidden");
                subiinput.focus();
                newquestion();
                soundwindmill.currentTime=0;
                soundwindmill.play();

                subiinput.addEventListener("keydown", (e) => {
                    setTimeout(function(){
                        if(parseInt(subiinput.value) === answer){
                            soundding.currentTime = 0;
                            subiinput.style.color = "green";
                            soundding.play();
                            setTimeout(function(){
                                subiinput.value = "";
                                stage++;
                                advancegator();
                                newquestion();
                            }, 500);
                        }
                    }, 50);
                });

                let seconds = setInterval(function (){
                    document.getElementById("subitimer").innerHTML = parseInt(document.getElementById("subitimer").innerHTML) +1;
                }, 1000)


                function randomIntBetween(min, max) { 
                    return Math.floor(Math.random() * (max - min + 1) + min)
                }


                function newquestion(){
                    subiinput.style.color = "red";
                    if(stage === 1){
                        let x = randomIntBetween(0, 10);
                        let y = randomIntBetween(0, 10);
                        if(x>=y){
                            subiquestion.innerHTML = x +" - "+ y;
                            answer = x - y;
                        }
                        else {
                            newquestion();
                        }
                        
                    }
                    if(stage === 2){
                        let x = randomIntBetween(0, 15);
                        let y = randomIntBetween(0, 15);
                        if(x>=y){
                            subiquestion.innerHTML = x +" - "+ y;
                            answer = x - y;
                        }
                        else {
                            newquestion();
                        }
                    }
                    if(stage === 3){
                        let x = randomIntBetween(0, 20);
                        let y = randomIntBetween(0, 20);
                        if(x>=y){
                            subiquestion.innerHTML = x +" - "+ y;
                            answer = x - y;
                        }
                        else {
                            newquestion();
                        }
                    }
                    if(stage === 4){
                        let x = randomIntBetween(0, 30);
                        let y = randomIntBetween(0, 30);
                        if(x>=y){
                            subiquestion.innerHTML = x +" - "+ y;
                            answer = x - y;
                        }
                        else {
                            newquestion();
                        }
                    }
                    if(stage === 5){
                        let x = randomIntBetween(0, 50);
                        let y = randomIntBetween(0, 50);
                        if(x>=y){
                            subiquestion.innerHTML = x +" - "+ y;
                            answer = x - y;
                        }
                        else {
                            newquestion();
                        }
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
                    document.getElementById("subigameend").classList.remove("hidden");
                    subitrack.classList.add("hidden");
                    subiwin.classList.remove("hidden");
                    subiinput.classList.add("hidden");
                    subitimerbox.classList.add("center");
                    score = 100 - parseInt(document.getElementById("subitimer").innerHTML);
                    subitimerbox.innerHTML = "Score: "+score;
                    subitimerbox.style.top = "35%";
                    soundwindmill.pause();
                    subiquit.classList.add("hidden");
                    
                    if(score > <%=subiHigh%>){
                            
                            
                            $.ajax({
                                url: "subigatorscore.jsp?score=" + score,
                                success: function(response) {
                                    console.log("AJAX request succeeded");
                                },
                                error: function(xhr, status, error) {
                                    console.log("AJAX request failed");
                                }
                            });

                            subinewhighscore.classList.remove("hidden");
                            

                        }
                }

                

            }

















            function multiplayerstart(){
                multiintro.classList.add("hidden");
                multi.classList.remove("hidden");
                subiquit.classList.remove("hidden");
               
                newquestion1();
                newquestion2();
                soundwindmill.currentTime=0;
                soundwindmill.play();


                window.addEventListener("keyup", subikeyup)
                function subikeyup(e){
                    if(e.which === 49 && r1 === 1){
                        stage1++;
                        subianswer1.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            subianswer1.parentElement.style.backgroundColor = "";
                        }, 500);
                        
                    }
                    if(e.which === 49 && r1 !== 1){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            subianswer1.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                subianswer1.parentElement.style.backgroundColor = "";
                            }, 500);
                        }
                        else {
                            subianswer1.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer1.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 50 && r1 === 2){
                        stage1++;
                        subianswer2.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            subianswer2.parentElement.style.backgroundColor = "";
                        }, 500);
                        
                    }
                    if(e.which === 50 && r1 !== 2){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            subianswer2.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                subianswer2.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer2.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer2.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 51 && r1 === 3){
                        stage1++;
                        subianswer3.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            subianswer3.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 51 && r1 !== 3){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            subianswer3.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                subianswer3.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer3.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer3.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 52 && r1 === 4){
                        stage1++;
                        subianswer4.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator1();
                            newquestion1();
                            subianswer4.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 52 && r1 !== 4){
                        if(stage1 !== 1){
                            stage1 = stage1 - 1;
                            subianswer4.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion1();
                                retreatgator1();
                                subianswer4.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer4.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer4.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }



                    if(e.which === 55 && r2 === 1){
                        stage2++;
                        subianswer5.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            subianswer5.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 55 && r2 !== 1){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            subianswer5.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                subianswer5.parentElement.style.backgroundColor = "";  
                            }, 500);
                            
                        }
                        else {
                            subianswer5.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer5.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 56 && r2 === 2){
                        stage2++;
                        subianswer6.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            subianswer6.parentElement.style.backgroundColor = "";  
                        }, 500);
                        
                    }
                    if(e.which === 56 && r2 !== 2){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            subianswer6.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                subianswer6.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer6.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer6.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 57 && r2 === 3){
                        stage2++;
                        subianswer7.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            subianswer7.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 57 && r2 !== 3){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            subianswer7.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                                subianswer7.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer7.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer7.parentElement.style.backgroundColor = "";
                            },500);
                        }
                    }
                    if(e.which === 48 && r2 === 4){
                        stage2++;
                        subianswer8.parentElement.style.backgroundColor = "green";
                        soundding.currentTime =0;
                        soundding.play();
                        setTimeout(function (){
                            advancegator2();
                            newquestion2();
                            subianswer8.parentElement.style.backgroundColor = "";    
                        }, 500);
                        
                    }
                    if(e.which === 48 && r2 !== 4){
                        if(stage2 !== 1){
                            stage2 = stage2 - 1;
                            subianswer8.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                newquestion2();
                                retreatgator2();
                            subianswer8.parentElement.style.backgroundColor = "";
                            }, 500);
                            
                        }
                        else {
                            subianswer8.parentElement.style.backgroundColor = "red";
                            setTimeout(function (){
                                subianswer8.parentElement.style.backgroundColor = "";
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
                        if(x>=y){
                            subiquestion1.innerHTML = x +" - "+ y;
                            answer1 = x - y;
                        }
                        else {
                            newquestion1();
                        }
                        
                        if(r1 === 1){
                            subianswer1.innerHTML = answer1;
                            subianswer2.innerHTML = randomIntBetween1(0,20);
                            subianswer3.innerHTML = randomIntBetween1(0,20);
                            subianswer4.innerHTML = randomIntBetween1(0,20);
                        }
                        else if(r1 === 2){
                            subianswer1.innerHTML = randomIntBetween1(0,20);
                            subianswer2.innerHTML = answer1;
                            subianswer3.innerHTML = randomIntBetween1(0,20);
                            subianswer4.innerHTML = randomIntBetween1(0,20);

                        }
                        else if(r1 === 3){
                            subianswer3.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,20);
                            subianswer2.innerHTML = randomIntBetween1(0,20);
                            subianswer4.innerHTML = randomIntBetween1(0,20);
                        }
                        else if(r1 === 4){
                            subianswer4.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,20);
                            subianswer2.innerHTML = randomIntBetween1(0,20);
                            subianswer3.innerHTML = randomIntBetween1(0,20);
                        }
                    }
                    if(stage1 === 2){
                        let x = randomIntBetween1(0, 15);
                        let y = randomIntBetween1(0, 15);
                        if(x>=y){
                            subiquestion1.innerHTML = x +" - "+ y;
                            answer1 = x - y;
                        }
                        else {
                            newquestion1();
                        }
                        if(r1 === 1){
                            subianswer1.innerHTML = answer1;
                            subianswer2.innerHTML = randomIntBetween1(0,30);
                            subianswer3.innerHTML = randomIntBetween1(0,30);
                            subianswer4.innerHTML = randomIntBetween1(0,30);
                        }
                        else if(r1 === 2){
                            subianswer1.innerHTML = randomIntBetween1(0,30);
                            subianswer2.innerHTML = answer1;
                            subianswer3.innerHTML = randomIntBetween1(0,30);
                            subianswer4.innerHTML = randomIntBetween1(0,30);

                        }
                        else if(r1 === 3){
                            subianswer3.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,30);
                            subianswer2.innerHTML = randomIntBetween1(0,30);
                            subianswer4.innerHTML = randomIntBetween1(0,30);
                        }
                        else if(r1 === 4){
                            subianswer4.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,30);
                            subianswer2.innerHTML = randomIntBetween1(0,30);
                            subianswer3.innerHTML = randomIntBetween1(0,30);
                        }
                    }
                    if(stage1 === 3){
                        let x = randomIntBetween1(0, 20);
                        let y = randomIntBetween1(0, 20);
                        if(x>=y){
                            subiquestion1.innerHTML = x +" - "+ y;
                            answer1 = x - y;
                        }
                        else {
                            newquestion1();
                        }
                        if(r1 === 1){
                            subianswer1.innerHTML = answer1;
                            subianswer2.innerHTML = randomIntBetween1(0,40);
                            subianswer3.innerHTML = randomIntBetween1(0,40);
                            subianswer4.innerHTML = randomIntBetween1(0,40);
                        }
                        else if(r1 === 2){
                            subianswer1.innerHTML = randomIntBetween1(0,40);
                            subianswer2.innerHTML = answer1;
                            subianswer3.innerHTML = randomIntBetween1(0,40);
                            subianswer4.innerHTML = randomIntBetween1(0,40);

                        }
                        else if(r1 === 3){
                            subianswer3.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,40);
                            subianswer2.innerHTML = randomIntBetween1(0,40);
                            subianswer4.innerHTML = randomIntBetween1(0,40);
                        }
                        else if(r1 === 4){
                            subianswer4.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,40);
                            subianswer2.innerHTML = randomIntBetween1(0,40);
                            subianswer3.innerHTML = randomIntBetween1(0,40);
                        }
                    }
                    if(stage1 === 4){
                        let x = randomIntBetween1(0, 30);
                        let y = randomIntBetween1(0, 30);
                        if(x>=y){
                            subiquestion1.innerHTML = x +" - "+ y;
                            answer1 = x - y;
                        }
                        else {
                            newquestion1();
                        }
                        if(r1 === 1){
                            subianswer1.innerHTML = answer1;
                            subianswer2.innerHTML = randomIntBetween1(0,60);
                            subianswer3.innerHTML = randomIntBetween1(0,60);
                            subianswer4.innerHTML = randomIntBetween1(0,60);
                        }
                        else if(r1 === 2){
                            subianswer1.innerHTML = randomIntBetween1(0,60);
                            subianswer2.innerHTML = answer1;
                            subianswer3.innerHTML = randomIntBetween1(0,60);
                            subianswer4.innerHTML = randomIntBetween1(0,60);

                        }
                        else if(r1 === 3){
                            subianswer3.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,60);
                            subianswer2.innerHTML = randomIntBetween1(0,60);
                            subianswer4.innerHTML = randomIntBetween1(0,60);
                        }
                        else if(r1 === 4){
                            subianswer4.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,60);
                            subianswer2.innerHTML = randomIntBetween1(0,60);
                            subianswer3.innerHTML = randomIntBetween1(0,60);
                        }
                    }
                    if(stage1 === 5){
                        let x = randomIntBetween1(0, 50);
                        let y = randomIntBetween1(0, 50);
                        if(x>=y){
                            subiquestion1.innerHTML = x +" - "+ y;
                            answer1 = x - y;
                        }
                        else {
                            newquestion1();
                        }
                        if(r1 === 1){
                            subianswer1.innerHTML = answer1;
                            subianswer2.innerHTML = randomIntBetween1(0,100);
                            subianswer3.innerHTML = randomIntBetween1(0,100);
                            subianswer4.innerHTML = randomIntBetween1(0,100);
                        }
                        else if(r1 === 2){
                            subianswer1.innerHTML = randomIntBetween1(0,100);
                            subianswer2.innerHTML = answer1;
                            subianswer3.innerHTML = randomIntBetween1(0,100);
                            subianswer4.innerHTML = randomIntBetween1(0,100);

                        }
                        else if(r1 === 3){
                            subianswer3.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,100);
                            subianswer2.innerHTML = randomIntBetween1(0,100);
                            subianswer4.innerHTML = randomIntBetween1(0,100);
                        }
                        else if(r1 === 4){
                            subianswer4.innerHTML = answer1;
                            subianswer1.innerHTML = randomIntBetween1(0,100);
                            subianswer2.innerHTML = randomIntBetween1(0,100);
                            subianswer3.innerHTML = randomIntBetween1(0,100);
                        }
                    }
                }
                function newquestion2(){
                    r2 = random1234();
                    if(stage2 === 1){
                        let x = randomIntBetween2(0, 10);
                        let y = randomIntBetween2(0, 10);
                        if(x>=y){
                            subiquestion2.innerHTML = x +" - "+ y;
                            answer2 = x - y;
                        }
                        else {
                            newquestion2();
                        }
                        if(r2 === 1){
                            subianswer5.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,20);
                            subianswer7.innerHTML = randomIntBetween2(0,20);
                            subianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 2){
                            subianswer6.innerHTML = answer2;
                            subianswer5.innerHTML = randomIntBetween2(0,20);
                            subianswer7.innerHTML = randomIntBetween2(0,20);
                            subianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 3){
                            subianswer7.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,20);
                            subianswer5.innerHTML = randomIntBetween2(0,20);
                            subianswer8.innerHTML = randomIntBetween2(0,20);
                        }
                        else if(r2 === 4){
                            subianswer8.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,20);
                            subianswer7.innerHTML = randomIntBetween2(0,20);
                            subianswer5.innerHTML = randomIntBetween2(0,20);
                        }
                    }
                    if(stage2 === 2){
                        let x = randomIntBetween2(0, 15);
                        let y = randomIntBetween2(0, 15);
                        if(x>=y){
                            subiquestion2.innerHTML = x +" - "+ y;
                            answer2 = x - y;
                        }
                        else {
                            newquestion2();
                        }
                        if(r2 === 1){
                            subianswer5.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,30);
                            subianswer7.innerHTML = randomIntBetween2(0,30);
                            subianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 2){
                            subianswer6.innerHTML = answer2;
                            subianswer5.innerHTML = randomIntBetween2(0,30);
                            subianswer7.innerHTML = randomIntBetween2(0,30);
                            subianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 3){
                            subianswer7.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,30);
                            subianswer5.innerHTML = randomIntBetween2(0,30);
                            subianswer8.innerHTML = randomIntBetween2(0,30);
                        }
                        else if(r2 === 4){
                            subianswer8.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,30);
                            subianswer7.innerHTML = randomIntBetween2(0,30);
                            subianswer5.innerHTML = randomIntBetween2(0,30);
                        }
                    }
                    if(stage2 === 3){
                        let x = randomIntBetween2(0, 20);
                        let y = randomIntBetween2(0, 20);
                        if(x>=y){
                            subiquestion2.innerHTML = x +" - "+ y;
                            answer2 = x - y;
                        }
                        else {
                            newquestion2();
                        }
                        if(r2 === 1){
                            subianswer5.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,40);
                            subianswer7.innerHTML = randomIntBetween2(0,40);
                            subianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 2){
                            subianswer6.innerHTML = answer2;
                            subianswer5.innerHTML = randomIntBetween2(0,40);
                            subianswer7.innerHTML = randomIntBetween2(0,40);
                            subianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 3){
                            subianswer7.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,40);
                            subianswer5.innerHTML = randomIntBetween2(0,40);
                            subianswer8.innerHTML = randomIntBetween2(0,40);
                        }
                        else if(r2 === 4){
                            subianswer8.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,40);
                            subianswer7.innerHTML = randomIntBetween2(0,40);
                            subianswer5.innerHTML = randomIntBetween2(0,40);
                        }
                    }
                    if(stage2 === 4){
                        let x = randomIntBetween2(0, 30);
                        let y = randomIntBetween2(0, 30);
                        if(x>=y){
                            subiquestion2.innerHTML = x +" - "+ y;
                            answer2 = x - y;
                        }
                        else {
                            newquestion2();
                        }
                        if(r2 === 1){
                            subianswer5.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,60);
                            subianswer7.innerHTML = randomIntBetween2(0,60);
                            subianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 2){
                            subianswer6.innerHTML = answer2;
                            subianswer5.innerHTML = randomIntBetween2(0,60);
                            subianswer7.innerHTML = randomIntBetween2(0,60);
                            subianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 3){
                            subianswer7.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,60);
                            subianswer5.innerHTML = randomIntBetween2(0,60);
                            subianswer8.innerHTML = randomIntBetween2(0,60);
                        }
                        else if(r2 === 4){
                            subianswer8.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,60);
                            subianswer7.innerHTML = randomIntBetween2(0,60);
                            subianswer5.innerHTML = randomIntBetween2(0,60);
                        }
                    }
                    if(stage2 === 5){
                        let x = randomIntBetween2(0, 50);
                        let y = randomIntBetween2(0, 50);
                        if(x>=y){
                            subiquestion2.innerHTML = x +" - "+ y;
                            answer2 = x - y;
                        }
                        else {
                            newquestion2();
                        }
                        if(r2 === 1){
                            subianswer5.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,100);
                            subianswer7.innerHTML = randomIntBetween2(0,100);
                            subianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 2){
                            subianswer6.innerHTML = answer2;
                            subianswer5.innerHTML = randomIntBetween2(0,100);
                            subianswer7.innerHTML = randomIntBetween2(0,100);
                            subianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 3){
                            subianswer7.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,100);
                            subianswer5.innerHTML = randomIntBetween2(0,100);
                            subianswer8.innerHTML = randomIntBetween2(0,100);
                        }
                        else if(r2 === 4){
                            subianswer8.innerHTML = answer2;
                            subianswer6.innerHTML = randomIntBetween2(0,100);
                            subianswer7.innerHTML = randomIntBetween2(0,100);
                            subianswer5.innerHTML = randomIntBetween2(0,100);
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
                        window.removeEventListener("keyup", subikeyup);
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
                        window.removeEventListener("keyup", subikeyup);
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
                    document.getElementById("subigameend2").classList.remove("hidden");
                    subitrack1.classList.add("hidden");
                    subitrack2.classList.add("hidden");
                    subiwin1.classList.remove("hidden");
                    soundwindmill.pause();
                    subiquestion1.classList.add("hidden");
                    subiquestion2.classList.add("hidden");
                    subianswer1.parentElement.classList.add("hidden");
                    subianswer2.parentElement.classList.add("hidden");
                    subianswer3.parentElement.classList.add("hidden");
                    subianswer4.parentElement.classList.add("hidden");
                    subianswer5.parentElement.classList.add("hidden");
                    subianswer6.parentElement.classList.add("hidden");
                    subianswer7.parentElement.classList.add("hidden");
                    subianswer8.parentElement.classList.add("hidden");
                    subiquit.classList.add("hidden");
                }

                function win2(){
                    document.getElementById("subigameend2").classList.remove("hidden");
                    subitrack1.classList.add("hidden");
                    subitrack2.classList.add("hidden");
                    subiwin2.classList.remove("hidden");
                    soundwindmill.pause();
                    subiquestion1.classList.add("hidden");
                    subiquestion2.classList.add("hidden");
                    subianswer1.parentElement.classList.add("hidden");
                    subianswer2.parentElement.classList.add("hidden");
                    subianswer3.parentElement.classList.add("hidden");
                    subianswer4.parentElement.classList.add("hidden");
                    subianswer5.parentElement.classList.add("hidden");
                    subianswer6.parentElement.classList.add("hidden");
                    subianswer7.parentElement.classList.add("hidden");
                    subianswer8.parentElement.classList.add("hidden");
                    subiquit.classList.add("hidden");
                }
            }


            function quit(){
                window.location.href = "subigator.jsp";
            }

        </script>
    </body>

</html>

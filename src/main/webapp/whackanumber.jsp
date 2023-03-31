<!DOCTYPE html>
<html>

    <head>
        <title>Denomigator</title>
        <link rel="stylesheet" href="styling/css.css">
        <link rel="stylesheet" href="styling/wackanumber.css">
    </head>
    
    <body>

       


        

        <div class="center gamecontainer" id="wackacontainer">

             <div id="redflash" class="hidden"></div>


            <div id="wackadiff">
                <h1>Whack-a-Num</h1>
                <h2>Select multiple to whack:</h2>

                <div class="flexcontainer">
                    <div class="multiples">2</div>
                    <div class="multiples">3</div>
                    <div class="multiples">4</div>
                    <div class="multiples">5</div>
                    <div class="multiples">6</div>
                    <div class="multiples">7</div>
                    <div class="multiples">8</div>
                    <div class="multiples">9</div>
                    <div class="multiples">10</div>
                    <div class="multiples">11</div>
                    <div class="multiples">12</div>
                </div>

                <button onclick="startwacka()" id="startwacka" class="center button">Begin!</button>
                <p id="wackaplease" class="hidden" style="color: red; position: relative; margin-left: 5vh;">Please select a multiple first!</p>


                <button onclick="back()" class="button" style="position: absolute; width:10%; height: 10%; top: 5%; left: 2%; padding: 0;">Back</button>
            </div>





            
            <div class="hidden" id="wackanum">

                <div style="position: absolute; left: 35%; font-size: large; font-weight: bold;">Whack multiples of <div id="wackaselected" style="display: inline;"></div>!</div>
                <div id="wackalives">
                    <div class="heart"></div>
                    <div class="heart"></div>
                    <div class="heart"></div>
                </div>
                <div id="wackatimerbox">Time left <div id="wackatimer" style="display: inline;">30</div></div>
                <div id="wackascorebox" style="position: absolute; top: 2vh;">Score: <div id="wackascore" style="display: inline;">0</div></div>
                <div id="wackanewhighscore" style="top: 35%;" class="hidden center">New Highscore !</div>

                <button class="button hidden center" id="wackarestart" onclick="restart()">Play again</button>

                <div class="mole" id="mole1"></div>
                <div class="mole" id="mole2"></div>
                <div class="mole" id="mole3"></div>
                <div class="mole" id="mole4"></div>
                <div class="mole" id="mole5"></div>
                <div class="mole" id="mole6"></div>
                <div class="mole" id="mole7"></div>
                <div class="mole" id="mole8"></div>
                <div class="mole" id="mole9"></div>
                <div class="notmole" id="notmole1"></div>
                <div class="notmole" id="notmole2"></div>
                <div class="notmole" id="notmole3"></div>
                <div class="notmole" id="notmole4"></div>
                <div class="notmole" id="notmole5"></div>
                <div class="notmole" id="notmole6"></div>
                <div class="notmole" id="notmole7"></div>
                <div class="notmole" id="notmole8"></div>
                <div class="notmole" id="notmole9"></div>

            </div>



            


        </div>

        <button onclick="quit()" class="button hidden" id="wackaquit" style="position: absolute; width:8%; height: 10%; top: 88%; left: 1%; padding: 0;">Quit</button>

        <audio id="gerudo" src="sounds/gerudo_valley_zelda.mp3"></audio>
        <audio id="aww" src="sounds/aww.mp3"></audio>
        <audio id="whack" src="sounds/whack.mp3"></audio>

        <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        <script>
        <%@ page import="java.sql.*" %>
        <% int wackaHigh = (Integer)session.getAttribute("wackahighscore"); %>

            
            
            var multiples = document.getElementsByClassName("multiples");
            var selected = [];
            var timer = document.getElementById("wackatimer");
            var moles = document.querySelectorAll('.mole');
            var notmoles = document.querySelectorAll(".notmole");
            var score = 0;
            var hearts = document.querySelectorAll(".heart");
            var x = 0;
            var wackarestart = document.getElementById("wackarestart");
            var wackascorebox = document.getElementById("wackascorebox");
            var wackascore = document.getElementById("wackascore");
            var correct = [];
            var soundzelda = document.getElementById("gerudo");
            var soundaww = document.getElementById("aww");
            var soundwhack = document.getElementById("whack");
            var wackaquit = document.getElementById("wackaquit");
            var wackanewhighscore = document.getElementById("wackanewhighscore");
            var redflash = document.getElementById("redflash");
            
            soundzelda.volume = 0.2;

            for(var i=0;i<=10;i++){
                multiples[i].addEventListener("click", select);
            }

           
            
            function select() {
                
                if(selected.includes(this.innerHTML) == true) {
                    let index = selected.indexOf(this.innerHTML);
                    selected.splice(index, 1);
                    this.style.backgroundColor = "";
                }
                else {
                    selected=[];
                    selected.push(this.innerHTML);
                    for(let i = 0;i<multiples.length;i++){
                        multiples[i].style.backgroundColor ="";
                    }
                    this.style.backgroundColor = "green";
                }
                

            }

            function restart(){
                location.reload();
            }


            

            
           


            function startwacka(){

                if(selected.length === 1){

                    for(let i=0;i<moles.length;i++){
                moles[i].addEventListener("click", function (){
                    
                    soundwhack.currentTime=0;
                    var clickdiv = document.createElement("div");
                    clickdiv.setAttribute("class", "points");
                    clickdiv.setAttribute("id", 'points'+ (new Date()).getTime());
                    clickdiv.setAttribute("style", "animation: slideup 1s; margin-left: 5vh; color: green;");
                    clickdiv.innerHTML = "+10";
                    wackascorebox.appendChild(clickdiv);
                    soundwhack.play();
                    setTimeout(function (){
                        wackascorebox.removeChild(clickdiv);
                    },1000);


                });
            }

            for(let i=0;i<notmoles.length;i++){
                notmoles[i].addEventListener("click", function (){

                    soundaww.currentTime=0;
                    var clickdiv = document.createElement("div");
                    clickdiv.setAttribute("class", "points");
                    clickdiv.setAttribute("id", 'points'+ (new Date()).getTime());
                    clickdiv.setAttribute("style", "animation: slideup 1s; margin-left: 6vh; color: red;");
                    clickdiv.innerHTML = "-5";
                    wackascorebox.appendChild(clickdiv);
                    soundaww.play();
                    redflash.classList.remove("hidden");
                    setTimeout(function (){redflash.classList.add("hidden");},100);
                    setTimeout(function (){
                        
                        wackascorebox.removeChild(clickdiv);
                    },1000);


                });
            }

                soundzelda.play();
                document.getElementById("wackadiff").style.display = "none";
                document.getElementById("wackanum").classList.remove("hidden");
                wackaquit.classList.remove("hidden");
                document.getElementById("wackaselected").innerHTML = selected[0];
                
                let seconds = setInterval(function (){

                    timer.innerHTML = parseInt(timer.innerHTML)-1;
                    if(timer.innerHTML == "0" || x === 3){
                        soundzelda.pause();
                        clearInterval(seconds);
                        clearInterval(moleinterval);
                        for(let i = 0; i<moles.length;i++){
                            moles[i].style.display = "none";
                            notmoles[i].style.display = "none";
                        }
                        wackarestart.classList.remove("hidden");
                        wackascorebox.classList.add("endscore");
                        wackascorebox.style.top = "30%";
                        wackaquit.classList.add("hidden");

                        if(score > <%=wackaHigh%>){
                            
                            
                            $.ajax({
                                url: "whackanumberscore.jsp?score=" + score,
                                success: function(response) {
                                    console.log("AJAX request succeeded");
                                },
                                error: function(xhr, status, error) {
                                    console.log("AJAX request failed");
                                }
                            });

                            wackanewhighscore.classList.remove("hidden");
                            

                        }

                        
                        
                        }

            }, 1000);


        for(let i=0;i<=100;i++){
            for(let y=0;y<selected.length;y++){
                if(selected[y]*i <= 100){
                    correct.push(selected[y]*i);
                }
                
            }

        }
        correct = correct.sort(function(a, b){return a-b});

        function randomTime(min, max) {
            return Math.round(Math.random() * (max - min) + min);
        }

        function randomNumbers(correct){
            var randomNumber = Math.floor(Math.random() * 101);
            if (correct.includes(randomNumber)) {
                return randomNumbers(correct);
            } else {
                return randomNumber;
            }
        }

        function randomMole(){
            var idx = Math.floor(Math.random() * moles.length);
            var mole = moles[idx];
            var notmole = notmoles[idx];
            var incorrect = randomNumbers(correct);
            var chance = Math.floor(Math.random() * 10);
            if(chance >= 7){
                notmole.innerHTML = incorrect;
                notmole.style.top = Math.random() * 70 + 'vh';
                notmole.style.left = Math.random() * 70 + 'vw';
                notmole.style.display = 'block';
                setTimeout(function() {
                notmole.style.display = 'none';
                }, randomTime(2000, 6000));

            }
            
            else{
                mole.innerHTML = correct[Math.floor(Math.random() * correct.length)];
                mole.style.top = Math.random() * 70 + 'vh';
                mole.style.left = Math.random() * 70 + 'vw';
                mole.style.display = 'block';

                setTimeout(function() {
                mole.style.display = 'none';
                }, randomTime(2000, 6000));

            }
            
        } 

        for (var i = 0; i < moles.length; i++) {
            moles[i].addEventListener('click', function(e) {
                e.target.style.display = 'none';
                score = score+10;
                document.querySelector('#wackascore').textContent = score;
            });
        }

        for (var i = 0; i < notmoles.length; i++) {
            notmoles[i].addEventListener('click', function(e) {
                e.target.style.display = 'none';
                score = score-5;
                document.querySelector('#wackascore').textContent = score;
                hearts[x].style.display = "none";
                x++;
            });
        }

       let moleinterval = setInterval(randomMole, 1500);
    
            }

            else{
                document.getElementById("wackaplease").classList.remove("hidden");
            }

        }


        function back(){
            window.location.href = "hub.jsp";
        }

        function quit() {
            window.location.href = "whackanumber.jsp";
        }
        


        </script>
    </body>

</html>

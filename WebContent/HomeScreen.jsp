<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="HangMan Home Page">

        <title>HangMan &ndash; Game &ndash; HomePage</title>

        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">

        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
          
        <link rel="stylesheet" href="css/layouts/marketing.css">

        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

        <link rel="stylesheet" href="css/animation/animations.css">

		
    </head>
    <body>

    <div class="header">
        <div class="home-menu pure-menu pure-menu-open pure-menu-horizontal pure-menu-fixed" id="header">
            <a class="pure-menu-heading" style="font-size: 25px;font-family:troikaregular" href="#">HangMan</a>

            <ul>
                <li class="pure-menu-selected"><a href="https://github.com/sbondada"><i class="fa fa-github-square" style="font-size:20px"></i>&nbsp;sbondada</a></li>
                <li class="pure-menu-selected"><a href="https://twitter.com/kaushalb09"><i class="fa fa-twitter-square" style="font-size:20px"></i>&nbsp;kaushalb09</a></li>
            </ul>
        </div>
    </div>


        
	<script src="headroom.js"></script>
	<script>
	var myElement = document.getElementById("header");
	var headroom  = new Headroom(myElement);
	headroom.init();
	</script>


    <div class="splash-container">
        <div class="splash">
            <h1 class="splash-head floating" style="font-size:80px;font-family:troikaregular;">HangMan</h1> 
            <p class="splash-subhead">
               	"A vocabulary game which brings an inner Sherlock in you" 
            </p>
               <a href="#content-wrapper" class="pure-button pure-button-primary">Get Started</a>
            <p>
            </p>
        </div>
    </div>

    <div class="content-wrapper" id="content-wrapper">
        <div class="content">
            <h2 class="content-head is-center"><i class="fa fa-cogs" style="font-size:40px">&nbsp;</i>Game-Setting</h2>
         <form class="pure-form pure-form-stacked" action="GamesScreen.jsp" method="get">                                                                                                              
            <div class="pure-g">
                <div class="l-box pure-u-1 pure-u-lg-1-3">

                    <h2 class="content-subhead">
                        <i class="fa fa-user" style="font-size:30px"></i>
                       	Enter Details 
                    </h2>
                         <label for="firstname">Your First Name</label>                                                                                                             
                         <input name="firstname" type="text" placeholder="Your First Name">                                                                                           
                                                                                                                                                                         
                                                                                                                                                                         
                         <label for="lastname">Your Last Name</label>                                                                                                           
                         <input name="lastname" type="text" placeholder="Your Last Name">    
                </div>
                <div class="l-box pure-u-1 pure-u-lg-1-3">
                    <h2 class="content-subhead">
                        <i class="fa fa-tachometer" style="font-size:30px"></i>
                        Choose Difficulty
                    </h2>
                         <label for="difficulty">Easy</label>                                                                                                             
                         <input type="radio" name="difficulty" value="easy"> </input>
                         <label for="difficulty">Medium</label>                                                                                                             
                         <input type="radio" name="difficulty" value="medium"> </input>
                         <label for="difficulty">Hard</label>                                                                                                             
                         <input type="radio" name="difficulty" value="hard"> </input>
                </div>
                <div class="l-box pure-u-1 pure-u-lg-1-3">
                    
                <p>
                   <br \>
                   <br \>
                   <div class="is-center"><button type="submit" class="pure-button pure-button-primary"><i style="font-size:30px" class="fa fa-power-off">&nbsp;&nbsp;Play Now</i></button></div>
                   <br \>
                   <div class="is-center"><a href="#leaderboard" class="pure-button pure-button-primary"><i style="font-size:30px" class="fa fa-flag-checkered">&nbsp;&nbsp;LeaderBoard</i></a></div>
                </p>
                </div>
           </div>
          </form>
        </div>
        <div class="content" id="leaderboard">
            <h2 class="content-head is-center"><i class="fa fa-flag-checkered" style="font-size:40px;"></i>&nbsp;LeaderBoard</h2>

        <table class="pure-table" align="center">
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Moves</th>
                    <th>Score</th>
                    <th>Difficulty</th>
                </tr>
            </thead>
            <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td>Honda</td>
                    <td>Accord</td>
                    <td>2009</td>
                    <td>2009</td>
                    <td>2009</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Toyota</td>
                    <td>Camry</td>
                    <td>2012</td>
                    <td>2012</td>
                    <td>2012</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>3</td>
                    <td>Hyundai</td>
                    <td>Elantra</td>
                    <td>2010</td>
                    <td>2010</td>
                    <td>2010</td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>Ford</td>
                    <td>Focus</td>
                    <td>2008</td>
                    <td>2008</td>
                    <td>2008</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>5</td>
                    <td>Nissan</td>
                    <td>Sentra</td>
                    <td>2011</td>
                    <td>2011</td>
                    <td>2011</td>
                </tr>

                <tr>
                    <td>6</td>
                    <td>BMW</td>
                    <td>M3</td>
                    <td>2009</td>
                    <td>2009</td>
                    <td>2009</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>7</td>
                    <td>Honda</td>
                    <td>Civic</td>
                    <td>2010</td>
                    <td>2010</td>
                    <td>2010</td>
                </tr>

                <tr>
                    <td>8</td>
                    <td>Kia</td>
                    <td>Soul</td>
                    <td>2010</td>
                    <td>2010</td>
                    <td>2010</td>
                </tr>
            </tbody>
        </table>
                

        </div>

        <div class="footer l-box is-center">
       		Created by Kaushal<br>
            Built with HTML , CSS , Pure , Headroom.js , FontAwsome and lots of  <i class="fa fa-heart"></i>.
        </div>

    </div>


    </body>
</html>
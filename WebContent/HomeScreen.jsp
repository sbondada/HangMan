<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="model.Player"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.HashMap"%>
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
        
        <link rel="shortcut icon"  type="image/x-icon" href="img/common/favicon.ico" >

		
    </head>
    <body>

    <div class="header">
        <div class="home-menu pure-menu pure-menu-open pure-menu-horizontal pure-menu-fixed" id="header">
            <a class="pure-menu-heading" style="font-size: 25px;font-family:troikaregular" href="#">HangMan</a>

            <ul style="left:-110px">
                <li class="pure-menu-selected"><a href="https://github.com/sbondada"><i class="fa fa-github-square" style="font-size:20px"></i>&nbsp;sbondada</a></li>
                <li class="pure-menu-selected"><a href="https://twitter.com/kaushalb09"><i class="fa fa-twitter-square" style="font-size:20px"></i>&nbsp;kaushalb09</a></li>
            </ul>
            <a href="https://github.com/sbondada/HangMan"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/a6677b08c955af8400f44c6298f40e7d19cc5b2d/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677261795f3664366436642e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png"></a>
            
        </div>
    </div>

	<%! 
	private ArrayList<Player> leaderboard=new ArrayList<Player>();
	private HashMap<String,Player> leadermap=new HashMap<String,Player>();
    public void jspInit()	
	{
		leaderboard.add(new Player("kaushal","bondada"));
		leadermap.put(leaderboard.get(0).getFirstName()+leaderboard.get(0).getLastName(),leaderboard.get(0));
		leaderboard.add(new Player("tegjyot","singh"));
		leadermap.put(leaderboard.get(1).getFirstName()+leaderboard.get(1).getLastName(),leaderboard.get(1));
		leaderboard.add(new Player("manoj","tammali"));
		leadermap.put(leaderboard.get(2).getFirstName()+leaderboard.get(2).getLastName(),leaderboard.get(2));
		leaderboard.add(new Player("venkatesh","javvaji"));
		leadermap.put(leaderboard.get(3).getFirstName()+leaderboard.get(3).getLastName(),leaderboard.get(3));
		leaderboard.add(new Player("abhishek","soni"));
		leadermap.put(leaderboard.get(4).getFirstName()+leaderboard.get(4).getLastName(),leaderboard.get(4));
		leaderboard.add(new Player("abhishake","sharma"));
		leadermap.put(leaderboard.get(5).getFirstName()+leaderboard.get(5).getLastName(),leaderboard.get(5));
		leaderboard.add(new Player("dilip","sitala"));
		leadermap.put(leaderboard.get(6).getFirstName()+leaderboard.get(6).getLastName(),leaderboard.get(6));
		leaderboard.add(new Player("veenanadh","stgk"));
		leadermap.put(leaderboard.get(7).getFirstName()+leaderboard.get(7).getLastName(),leaderboard.get(7));
		leaderboard.add(new Player("abhinav","agarwal"));
		leadermap.put(leaderboard.get(8).getFirstName()+leaderboard.get(0).getLastName(),leaderboard.get(8));
		leaderboard.add(new Player("sagar","harendra"));
		leadermap.put(leaderboard.get(9).getFirstName()+leaderboard.get(9).getLastName(),leaderboard.get(9));
	}
	%>
	<%
	ArrayList<Player> leaderboardapp=(ArrayList<Player>) application.getAttribute("leaderboard");
	if(leaderboardapp==null)	
	{
		leaderboardapp=this.leaderboard;	
		application.setAttribute("leaderboard",leaderboardapp);
		application.setAttribute("leadermap",leadermap);
	}
	%>

	<script src="headroom.js"></script>
	<script>
	var myElement = document.getElementById("header");
	var headroom  = new Headroom(myElement);
	headroom.init();
	</script>


    <div class="splash-container">
        <div class="splash">
            <div class="splash-head floating" style="font-size:150px;font-family:troikaregular;">HangMan</div> 
            <p class="splash-subhead">
            	<br>
               	"A vocabulary game which brings an inner Sherlock in you" 
            </p>
               <a href="#content-wrapper" class="pure-button pure-button-primary"><div style="font-size:30px">Get Started</div></a>
            <p>
            </p>
        </div>
    </div>

<script type="text/javascript">
	function validateForm() {
	    var x = document.forms["settings"]["firstname"].value;
	    if (x == null || x == "") {
	        alert("Invalid Entry :Please Enter First Name ");
	        return false;
	    }
		x = document.forms["settings"]["lastname"].value;
	    if (x == null || x == "") {
	        alert("Invalid Entry : Please Enter Last Name");
	        return false;
	    }
        x = document.forms["settings"]["difficulty"].value;
	    if (x == null || x == "") {
	        alert("Invalid Entry : Please Enter the difficulty level");
	        return false;
	    }
	}
	</script>

    <div class="content-wrapper" id="content-wrapper">
        <div class="content">
            <h2 class="content-head is-center"><i class="fa fa-cogs" style="font-size:40px">&nbsp;</i>Game-Setting</h2>
         <form  name="settings" class="pure-form pure-form-stacked" onsubmit="return validateForm()" action="GameServlet" method="get">                                                                                                              
            <div class="pure-g">
                <div class="l-box pure-u-1 pure-u-lg-1-3">

                    <h2 class="content-subhead">
                        <i class="fa fa-user" style="font-size:30px"></i>
                       	Enter Details 
                    </h2>
                         <label for="firstname">Your First Name</label>                                                                                                             
                         <input name="firstname" style="outline-color:#9a40bf" type="text" placeholder="Your First Name">                                                                                           
                                                                                                                                                                         
                                                                                                                                                                         
                         <label for="lastname">Your Last Name</label>                                                                                                           
                         <input name="lastname"  style="outline-color:#9a40bf" type="text" placeholder="Your Last Name">    
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
                   <br />
                   <br />
                   <div class="is-center"><button type="submit" class="pure-button pure-button-primary"><i style="font-size:30px" class="fa fa-power-off">&nbsp;&nbsp;Play Now</i></button></div>
                   <br />
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
                    <th>Wrong Moves</th>
                    <th>Score</th>
                </tr>
            </thead>
            <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td><%=leaderboardapp.get(0).getFirstName() %></td>
                    <td><%=leaderboardapp.get(0).getLastName() %></td>
                    <td><%=leaderboardapp.get(0).getChancesTaken() %></td>
                    <td><%=leaderboardapp.get(0).getScore()%></td>
                </tr>

                <tr>
                    <td>2</td>
                    <td><%=leaderboardapp.get(1).getFirstName() %></td>
                    <td><%=leaderboardapp.get(1).getLastName()%></td>
                    <td><%=leaderboardapp.get(1).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(1).getScore()%></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>3</td>
                    <td><%=leaderboardapp.get(2).getFirstName() %></td>
                    <td><%=leaderboardapp.get(2).getLastName()%></td>
                    <td><%=leaderboardapp.get(2).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(2).getScore()%></td>
                </tr>

                <tr>
                    <td>4</td>
                    <td><%=leaderboardapp.get(3).getFirstName() %></td>
                    <td><%=leaderboardapp.get(3).getLastName()%></td>
                    <td><%=leaderboardapp.get(3).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(3).getScore()%></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>5</td>
                    <td><%=leaderboardapp.get(4).getFirstName() %></td>
                    <td><%=leaderboardapp.get(4).getLastName()%></td>
                    <td><%=leaderboardapp.get(4).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(4).getScore()%></td>
                </tr>

                <tr>
                    <td>6</td>
                    <td><%=leaderboardapp.get(5).getFirstName() %></td>
                    <td><%=leaderboardapp.get(5).getLastName()%></td>
                    <td><%=leaderboardapp.get(5).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(5).getScore()%></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>7</td>
                    <td><%=leaderboardapp.get(6).getFirstName() %></td>
                    <td><%=leaderboardapp.get(6).getLastName()%></td>
                    <td><%=leaderboardapp.get(6).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(6).getScore()%></td>
                </tr>

                <tr>
                    <td>8</td>
                    <td><%=leaderboardapp.get(7).getFirstName() %></td>
                    <td><%=leaderboardapp.get(7).getLastName()%></td>
                    <td><%=leaderboardapp.get(7).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(7).getScore()%></td>
                </tr>

                <tr>
                    <td>9</td>
                    <td><%=leaderboardapp.get(8).getFirstName() %></td>
                    <td><%=leaderboardapp.get(8).getLastName()%></td>
                    <td><%=leaderboardapp.get(8).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(8).getScore()%></td>
                </tr>
 
                <tr>
                    <td>10</td>
                    <td><%=leaderboardapp.get(9).getFirstName() %></td>
                    <td><%=leaderboardapp.get(9).getLastName()%></td>
                    <td><%=leaderboardapp.get(9).getChancesTaken()%></td>
                    <td><%=leaderboardapp.get(9).getScore()%></td>
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
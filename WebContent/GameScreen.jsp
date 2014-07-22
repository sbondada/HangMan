<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Player"%>
<%@page import="java.util.HashMap"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="HangMan Home Page">

        <title>HangMan &ndash; Game &ndash; GameScreen</title>

        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">

        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
          
        <link rel="stylesheet" href="css/layouts/marketing.css">

        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

        <link rel="stylesheet" href="css/animation/animations.css">
        
        <link rel="shortcut icon"  type="image/x-icon" href="img/common/favicon.ico" >
</head>
<body onload="document.getElementById('guess').focus()">
	<% 
		HttpSession current= request.getSession();
		Player curruser=(Player)current.getAttribute("Player");
	%>

    <%! 
	private HashMap<Integer,String> statusmap=new HashMap<Integer,String>();
    public void jspInit()	
	{	
		statusmap.put(0,"img/hanger/Hangman-0.png");	
		statusmap.put(1,"img/hanger/Hangman-1.png");	
		statusmap.put(2,"img/hanger/Hangman-1.png");	
		statusmap.put(3,"img/hanger/Hangman-2.png");	
		statusmap.put(4,"img/hanger/Hangman-3.png");	
		statusmap.put(5,"img/hanger/Hangman-3.png");	
		statusmap.put(6,"img/hanger/Hangman-4.png");	
		statusmap.put(7,"img/hanger/Hangman-4.png");	
		statusmap.put(8,"img/hanger/Hangman-5.png");	
		statusmap.put(9,"img/hanger/Hangman-6.png");	
	}
    %>

    <div class="splash-container1">

        <div class="splash1">
            <div class="splash-head1 floating" style="font-size:150px;font-family:troikaregular;"><%=curruser.getWord() %></div> 
        </div>

		<div class="pure-g" style="position: relative; top:-15%">
            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3" >
                <div class="stage" style="width: 120px; height: 120px; margin-left:20% ">
                    <div class="cubespinner">
                        <div class="face1" ><br> <a style="font-size:50%">Chances Taken</a> <br> <br><br><br><br> <a style="font-size:220%"><%=curruser.getChancesTaken() %></a></div>
                        <div class="face2"><br> <a style="font-size:50%">Char Revealed</a> <br> <br><br><br><br> <a style="font-size:220%"><%=curruser.getWordsRevealed() %></a></div>
                        <div class="face3"><br> <a style="font-size:50%">Difficulty</a> <br> <br><br><br><br> <a style="font-size:120%"><%=curruser.getDifficulty() %></a></div>
                        <div class="face4"><br> <a style="font-size:50%">First Name</a> <br> <br><br><br><br> <a style="font-size:80%"><%=curruser.getFirstName() %></a></div>
                        <div class="face5"><br> <a style="font-size:50%">Last Name</a> <br> <br><br><br><br> <a style="font-size:80%"><%=curruser.getLastName() %></a></div>
                        <div class="face6"><br> <a style="font-size:50%">Status</a> <br><br> <a ><img src=<%=statusmap.get(curruser.getChancesTaken()-1) %> alt=<%=curruser.getChancesTaken() %> width="200" height="200"></a></div>
                    </div>
                </div>
            </div>

            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3">
              
            </div>

            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3">
                <div class="is-center" >
                    <form action="GameServlet" method="post">
                        <input name="guessedletter" type="text" style="font-size:150px; width:120px;color:#9a40bf; text-transform:uppercase;" onkeydown="if (event.keyCode == 13) document.getElementById('guess').click()">                                                                                           
                       	<p>
                       	</p>
                        <button id="guess" type="submit" class="pure-button pure-button-primary button-pos1" style="font-size:200%" autofocus>guess the letter</button>
                    </form>
                </div>
            </div>
       </div>
		
    </div>
</body>
</html>
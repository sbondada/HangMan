<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Player"%>

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
<body>
	<% 
		HttpSession current= request.getSession();
		Player curruser=(Player)current.getAttribute("Player");
	%>


    <div class="splash-container1">

        <div class="splash1">
            <div class="splash-head1 floating" style="font-size:150px;font-family:troikaregular;"><%=curruser.getWord() %></div> 
        </div>

		<div class="pure-g" style="position: relative; top:-15%">
            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3" >
                <div class="stage" style="width: 120px; height: 120px; margin-left:20% ">
                    <div class="cubespinner">
                        <div class="face1">1</div>
                        <div class="face2">2</div>
                        <div class="face3">3</div>
                        <div class="face4">4</div>
                        <div class="face5">5</div>
                        <div class="face6">6</div>
                    </div>
                </div>
            </div>

            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3">
              
            </div>

            <div class="l-box pure-u-md-1-3 pure-u-lg-1-3">
                <div class="is-center" >
                    <form action="GameServlet" method="post">
                        <input name="guessedletter" type="text" style="font-size:150px; width:120px;color:#9a40bf; text-transform:uppercase;" >                                                                                           
                       	<p>
                       	</p>
                        <button type="submit" class="pure-button pure-button-primary button-pos1" style="font-size:200%">guess the letter</button>
                    </form>
                </div>
            </div>
       </div>
		
    </div>
</body>
</html>
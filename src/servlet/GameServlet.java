package servlet;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Player;

/**
 * Servlet implementation class GameServlet
 */
@WebServlet(description = "the controller which controls intraction of servers in the game", urlPatterns = { "/GameServlet" })
public class GameServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private HashMap<String,ArrayList<String>> wordlist;

	public GameServlet()
	{
		super();
		wordlist=new HashMap<String, ArrayList<String>>();
		ArrayList<String> easylist=new ArrayList<String>();
        ArrayList<String> mediumlist=new ArrayList<String>();
		ArrayList<String> hardlist=new ArrayList<String>();

		try {
		    String str;
		    BufferedReader in = new BufferedReader(new FileReader("/home/kaushal/Dropbox/workspace/HangMan/src/input/easylist.txt"));
		    while ((str = in.readLine()) != null)
		    {
		    	easylist.add(str);
		    }
		    in.close();
		    wordlist.put("easy", easylist);

            in = new BufferedReader(new FileReader("/home/kaushal/Dropbox/workspace/HangMan/src/input/mediumlist.txt"));
		    while ((str = in.readLine()) != null)
		    {
		    	mediumlist.add(str);
		    }
		    in.close();
		    wordlist.put("medium", mediumlist);

		    in = new BufferedReader(new FileReader("/home/kaushal/Dropbox/workspace/HangMan/src/input/hardlist.txt"));
		    while ((str = in.readLine()) != null)
		    {
                hardlist.add(str);
		    }
		    in.close();
		    wordlist.put("hard",hardlist);

		} 
		catch (IOException e) 
		{
			System.out.println("file not found");
	    }
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public int randInt(int min, int max) {

	    // NOTE: Usually this should be a field rather than a method
	    // variable so that it is not re-seeded every call.
	    Random rand = new Random();

	    // nextInt is normally exclusive of the top value,
	    // so add 1 to make it inclusive
	    int randomNum = rand.nextInt((max - min) + 1) + min;

	    return randomNum;
	}

	public String chooseRandom(String level)
	{
		ArrayList<String> list=this.wordlist.get(level);
		int randpos=this.randInt(0,list.size()-1);
		return list.get(randpos);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String difficulty=request.getParameter("difficulty");
		Player newentry=new Player(firstname.toLowerCase(), lastname.toLowerCase());
		HttpSession current=request.getSession();
        String selword=this.chooseRandom(difficulty);
		current.setAttribute("word",selword.toCharArray());
		newentry.setDifficulty(difficulty);
		char[] dispword=new char[selword.length()];
		for(int i=0;i<selword.length();i++)
		{
            System.out.println(difficulty); 
			dispword[i]='_';
		}
		newentry.setWord(dispword);
		current.setAttribute("Player",newentry);
		response.sendRedirect("GameScreen.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession current=request.getSession();
		char guessedLetter=request.getParameter("guessedletter").toLowerCase().toCharArray()[0];
		System.out.println(guessedLetter);
		char[] word=(char[]) current.getAttribute("word");
		Player user=(Player) current.getAttribute("Player");
		char[] disword=user.getWord();
		String strword=new String(word);
		String dispstring=new String(disword);
		System.out.println(dispstring);
		System.out.println(strword);
		System.out.println(strword.indexOf(guessedLetter));
		if(strword.indexOf(guessedLetter)>=0) 
		{
			if(dispstring.indexOf(guessedLetter)==-1)
            {
                int noOfChar=0;
                int inc=0;
                while(inc<strword.length())
                {
                    if(strword.charAt(inc)==guessedLetter)
                    {
                        disword[inc]=guessedLetter;
                        System.out.println("in "+new String(disword));
                        noOfChar++;
                    }
                    inc++;
                }
                user.setWordsRevealed(user.getWordsRevealed()+noOfChar);
                user.setWord(disword);
                dispstring=new String(disword);
                if(dispstring.indexOf('_')==-1)
                {
                    user.calculateScore();
                    System.out.println("score"+user.getScore());
                    ServletContext application=request.getServletContext();
                    @SuppressWarnings("unchecked")
                    ArrayList<Player> leaderboard=(ArrayList<Player>) application.getAttribute("leaderboard");
                    @SuppressWarnings("unchecked")
                    HashMap<String,Player> leaderList=(HashMap<String, Player>) application.getAttribute("leadermap");
                    System.out.println(user.getFirstName()+user.getLastName());
                    if(leaderList.containsKey(user.getFirstName()+user.getLastName()))
                    {
                        Player temp=leaderList.get(user.getFirstName()+user.getLastName());
                        user.setChancesTaken(temp.getChancesTaken()+user.getChancesTaken());
                        user.setScore(temp.getScore()+user.getScore());
                        user.setWordsRevealed(temp.getWordsRevealed()+user.getWordsRevealed());
                        leaderList.put(user.getFirstName()+user.getLastName(),user);
                        leaderboard.remove(temp);
                        leaderboard.add(user);
                    }
                    else
                    {
                        leaderList.put(user.getFirstName()+user.getLastName(),user);
                        leaderboard.add(user);
                    }
                    Collections.sort(leaderboard, new Comparator<Player>()
                    {
                            public int compare(Player p1,Player p2)		
                            {
                               return p2.getScore()-p1.getScore();	
                            }
                    });
                    if(leaderboard.size()>10)
                    {
                    	System.out.println("last value removed");
                        leaderboard.remove(leaderboard.size()-1);
                        application.setAttribute("leaderboard",leaderboard);
                    }
                    response.sendRedirect("HomeScreen.jsp#leaderboard");
                    return;
                }
            }
            current.setAttribute("Player",user);
            response.sendRedirect("GameScreen.jsp");
        }
        else
        {
            if(user.getChancesTaken()<10)
            {
                user.setChancesTaken(user.getChancesTaken()+1);
                current.setAttribute("Player", user);
                response.sendRedirect("GameScreen.jsp");
            }
            else
            {
                response.sendRedirect("HomeScreen.jsp");
            }
        }
    }
}
package model;

import java.util.ArrayList;

public class Player  
{
	private String firstName; 
    private String lastName; 
	private char[] word;
	private int chancesTaken;
	private int wordsRevealed; 
	private int score;
	private String difficulty;

	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public char[] getWord() {
		return word;
	}
	public void setWord(char[] word) {
		this.word = word;
	}
	public int getChancesTaken() {
		return chancesTaken;
	}
	public void setChancesTaken(int chancesTaken) {
		this.chancesTaken = chancesTaken;
	}
	public int getWordsRevealed() {
		return wordsRevealed;
	}
	public void setWordsRevealed(int wordsRevealed) {
		this.wordsRevealed = wordsRevealed;
	}

	public int getMultiplier()
	{
		if(getDifficulty()=="easy")
		{
			return 1;
		}
		else if(getDifficulty()=="medium")
		{
			return 2;
		}
		else 
		{
			return 3;
		}
	}
	
	public Player(String firstName,String lastName)
	{
		this.firstName=firstName;
		this.lastName=lastName;
		this.wordsRevealed=0;
		this.chancesTaken=1;
		this.difficulty="easy";
		this.score=0;
    }

	public void calculateScore()
	{
		this.score=getMultiplier()*this.wordsRevealed*(10-this.chancesTaken);
	}
}

package com.project.testsurvey.model;

import java.util.ArrayList;

public class Result {

	String question;
	ArrayList<Double> sol = new ArrayList<Double>();
	ArrayList<String> opt = new ArrayList<String>();
	String answer;
	int catid;

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public ArrayList<Double> getSol() {
		return sol;
	}

	public void setSol(ArrayList<Double> sol) {
		this.sol = sol;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getCatid() {
		return catid;
	}

	public void setCatid(int catid) {
		this.catid = catid;
	}

	public ArrayList<String> getOpt() {
		return opt;
	}

	public void setOpt(ArrayList<String> opt) {
		this.opt = opt;
	}

}

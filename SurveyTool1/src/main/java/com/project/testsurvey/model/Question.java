package com.project.testsurvey.model;

public class Question {

	int question_id;
	String question;
	String solution1;
	String solution2;
	String solution3;
	String solution4;
	String answer;
	int category;

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getSolution1() {
		return solution1;
	}

	public void setSolution1(String solution1) {
		this.solution1 = solution1;
	}

	public String getSolution2() {
		return solution2;
	}

	public void setSolution2(String solution2) {
		this.solution2 = solution2;
	}

	public String getSolution3() {
		return solution3;
	}

	public void setSolution3(String solution3) {
		this.solution3 = solution3;
	}

	public String getSolution4() {
		return solution4;
	}

	public void setSolution4(String solution4) {
		this.solution4 = solution4;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

}

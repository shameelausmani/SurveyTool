package com.project.testsurvey;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.testsurvey.model.Question;
import com.project.testsurvey.model.Result;

@Controller
public class AdminpageController {

	@RequestMapping(value = "/viewQuestions", method = RequestMethod.GET)
	public String toOpenViewQuestions(Model model) {
		model.addAttribute("allQuestions", getAllQuestions());
		return "viewQuestions";
	}

	@RequestMapping(value = "adminPost", method = RequestMethod.POST)
	public String toreadAndSAveData(@RequestParam(value = "question") String ques,
			@RequestParam(value = "sol1") String sol1, @RequestParam(value = "sol2") String sol2,
			@RequestParam(value = "sol3") String sol3, @RequestParam(value = "sol4") String sol4,
			@RequestParam(value = "optradio") String cat, @RequestParam(value = "answer") String ans, Model model) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");

			String query = "insert into survey_questions (category_id,questions,solution1,solution2,solution3,solution4,actual_answer) values (?,?,?,?,?,?,?)";
			PreparedStatement pstatement = connection.prepareStatement(query);

			pstatement.setInt(1, Integer.parseInt(cat));
			pstatement.setString(2, ques);
			pstatement.setString(3, sol1);
			pstatement.setString(4, sol2);
			pstatement.setString(5, sol3);
			pstatement.setString(6, sol4);
			pstatement.setString(7, getSolution(sol1, sol2, sol3, sol4, Integer.parseInt(ans)));

			int n = pstatement.executeUpdate();
			if (n == 1) {
				System.out.println("Question Added Successfully");
				return "adminpage";
			} else {
				String msg = "Adding Question Failed";
				model.addAttribute("errorMsg", msg);
				return "adminpage";
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String getSolution(String s1, String s2, String s3, String s4, int ans) {
		if (ans == 1) {
			return s1;
		} else if (ans == 2) {
			return s2;
		} else if (ans == 3) {
			return s3;
		} else {
			return s4;
		}
	}

	@RequestMapping(value = "/deleteQuestions", method = RequestMethod.GET)
	public String toOpendelete(Model model) {
		model.addAttribute("allQuestions", getAllQuestions());
		return "deleteQuestions";
	}

	@RequestMapping(value = "/analyzeResult", method = RequestMethod.GET)
	public String toOpenanalyzeResult(Model model) {
		ArrayList<Result> allResults = new ArrayList<Result>();
		ArrayList<Question> allQuestions = getAllQuestions();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");
			Statement statement = connection.createStatement();
			String query = "select s.questions,s.actual_answer,a.user_answer,count(user_answer) as ca,r.t as tt, (count(user_answer)/r.t)*100 as per,s.category_id "
					+ "from survey_questions s,all_responses a ,(select count(*) as t,question_id from all_responses group by question_id) r "
					+ "where s.question_id=a.question_id and r.question_id=a.question_id group by s.question_id,a.user_answer";
			ResultSet rs = statement.executeQuery(query);
			String question = "";
			String answer = "";
			double per = 0;
			int catid = 0;

			int index = -1;
			boolean found = true;

			while (rs.next()) {
				Result result = new Result();

				question = rs.getString(1);
				answer = rs.getString(3);
				per = rs.getDouble(6);
				catid = rs.getInt(7);

				index = 0;
				found = false;

				for (Result r : allResults) {
					index++;
					if (r.getQuestion().equals(question)) {
						result.setQuestion(question);
						result.setSol(r.getSol());
						result.getSol().add(per);
						result.setOpt(r.getOpt());
						result.setAnswer(r.getAnswer());
						result.setCatid(r.getCatid());

						Collections.sort(r.getSol());
						if (per > r.getSol().get(r.getSol().size() - 1)) {
							result.setAnswer(answer);
						}
						found = true;
						break;
					}
				}

				if (found) {
					allResults.remove(index - 1);
					allResults.add(result);
				} else {
					result.setQuestion(question);
					result.setAnswer(answer);
					result.getSol().add(per);
					for (Question q : allQuestions) {
						if (q.getQuestion().equals(question)) {
							result.getOpt().add(q.getSolution1());
							result.getOpt().add(q.getSolution2());
							result.getOpt().add(q.getSolution3());
							result.getOpt().add(q.getSolution4());
						}
					}
					result.setCatid(catid);
					allResults.add(result);
				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (Result r : allResults) {
			for (int i = r.getSol().size(); i < 4; i++) {
				r.getSol().add(0.0);
			}
		}
		model.addAttribute("allAnswers", allResults);
		return "analyzeResult";
	}

	@RequestMapping(value = "/userpage", method = RequestMethod.GET)
	public String toOpenuserpage() {
		return "userpage";
	}

	@RequestMapping(value = "/thankyoupage", method = RequestMethod.GET)
	public String toOpenthankyoupage() {
		return "thankyoupage";
	}

	@RequestMapping(value = "deleteForm", method = RequestMethod.POST)
	public String toDeleteQuestion(@RequestParam(value = "delete") int qid, Model model) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");
			String query = "delete from survey_questions where question_id=" + qid;
			PreparedStatement pstmt = connection.prepareStatement(query);
			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("allQuestions", getAllQuestions());
		return "deleteQuestions";
	}

	private ArrayList<Question> getAllQuestions() {
		ArrayList<Question> allQuestions = new ArrayList<Question>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");
			Statement statement = connection.createStatement();
			String query = "select * from survey_questions";
			ResultSet rs = statement.executeQuery(query);
			while (rs.next()) {
				Question q = new Question();
				q.setQuestion_id(rs.getInt(1));
				q.setCategory(rs.getInt(2));
				q.setQuestion(rs.getString(3));
				q.setSolution1(rs.getString(4));
				q.setSolution2(rs.getString(5));
				q.setSolution3(rs.getString(6));
				q.setSolution4(rs.getString(7));
				q.setAnswer(rs.getString(8));

				allQuestions.add(q);
			}
			return allQuestions;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}

package com.project.testsurvey;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.testsurvey.model.Question;

@Controller
public class HomeController {

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "Mainpage";
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String toOpenloginpage() {
		return "loginpage";
	}

	@RequestMapping(value = "/registrationpage", method = RequestMethod.GET)
	public String toOpenregistrationpage() {
		return "registrationpage";
	}

	@RequestMapping(value = "/adminpage", method = RequestMethod.GET)
	public String toOpenadminpage() {
		return "adminpage";
	}

	@RequestMapping(value = "/contactpage", method = RequestMethod.GET)
	public String toOpencontactpage() {
		return "contactpage";
	}
	
	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public String towriteAndSAveData(@RequestParam(value = "email") String email,
			@RequestParam(value = "pswd") String password, Model model) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");
			Statement statement = connection.createStatement();
			String query = "select * from user where email_id='" + email + "' and password='" + password + "'";
			ResultSet rs = statement.executeQuery(query);
			if (rs.next()) {
				int cat = rs.getInt("CATEGORY_ID");
				if (cat == 4) {
					return "adminpage";
				} else {
					model.addAttribute("email", email);
					model.addAttribute("cat", cat);
					model.addAttribute("allQuestions", getAllQuestionsForCat(cat));
					return "userpage";
				}
			} else {
				String msg = "Invalid login Password";
				model.addAttribute("errorMsg", msg);
				return "loginpage";
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "loginpage";
	}

	@RequestMapping(value = "registerPost", method = RequestMethod.POST)
	public String toreadAndSAveData(@RequestParam(value = "firstname") String fname,
			@RequestParam(value = "lastname") String lname, @RequestParam(value = "email") String email,
			@RequestParam(value = "pwd") String pwd, @RequestParam(value = "phone_number") String pno,
			@RequestParam(value = "dob") String dob, @RequestParam(value = "cat") String catagory) {

		try {
			DateFormat formatter = new SimpleDateFormat("mm/dd/yyyy");
			Date d = formatter.parse(dob);

			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");

			String query = "insert into user values (?,?,?,?,?,?,?)";
			PreparedStatement pstatement = connection.prepareStatement(query);

			pstatement.setString(1, fname);
			pstatement.setString(2, lname);
			pstatement.setString(3, email);
			pstatement.setString(4, pwd);
			pstatement.setString(5, pno);
			pstatement.setDate(6, new java.sql.Date(d.getTime()));
			pstatement.setInt(7, Integer.parseInt(catagory));

			int n = pstatement.executeUpdate();
			if (n == 1) {
				System.out.println("User Created Successfully");
				return "loginpage";
			} else {
				return "registrationpage";
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "registrationpage";
	}

	private ArrayList<Question> getAllQuestionsForCat(int cat) {
		ArrayList<Question> allQuestions = new ArrayList<Question>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool", "shameela",
					"shameela@shameela");
			Statement statement = connection.createStatement();
			String query = "select * from survey_questions where CATEGORY_ID=" + cat;
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

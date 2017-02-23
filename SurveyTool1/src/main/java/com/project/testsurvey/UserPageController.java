package com.project.testsurvey;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserPageController {

	@RequestMapping(value = { "surveyForm/", "surveyForm" }, method = RequestMethod.POST)
	public String totakeSurvey(@RequestParam Map<String, String> all, Model model) {
		int q_id;
		String q_ans;

		String email = all.get("email");
		int cat = Integer.parseInt(all.get("cat"));

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/surveytool?useSSL=false", "shameela",
					"shameela@shameela");
			String query = "insert into response (email_id,date,category_id) values (?,?,?)";
			PreparedStatement pstmt = connection.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setDate(2, new java.sql.Date(new Date().getTime()));
			pstmt.setInt(3, cat);
			pstmt.executeUpdate();

			query = "select max(response_id) from response";
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			rs.next();
			int res_id = rs.getInt(1);

			for (Map.Entry<String, String> entry : all.entrySet()) {
				String key = entry.getKey();
				if (key.startsWith("question")) {
					q_id = Integer.parseInt(key.split("-")[1]);
					q_ans = entry.getValue();
					
					query = "insert into all_responses values (?,?,?)";
					pstmt = connection.prepareStatement(query);
					pstmt.setInt(1, res_id);
					pstmt.setInt(2, q_id);
					pstmt.setString(3, q_ans);
					pstmt.executeUpdate();
				}
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "thankyoupage";
	}
}

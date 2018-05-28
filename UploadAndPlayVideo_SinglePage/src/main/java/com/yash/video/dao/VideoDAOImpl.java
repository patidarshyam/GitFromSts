package com.yash.video.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.yash.video.util.DBUtil;

@Repository
public class VideoDAOImpl implements VideoDAO {

	public void insert(String fileName) {
		PreparedStatement preparedStatement = null;
		preparedStatement = DBUtil.createPreparedstatement("INSERT INTO videodetails(fileName)VALUES(?)");
		try {
			preparedStatement.setString(1, fileName);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			DBUtil.closePreparedStatement();
			DBUtil.closeConnection();
		}
	}

	public List<String> list() {
		PreparedStatement preparedStatement = null;
		List<String> videos = new ArrayList<String>();
		try {
			preparedStatement = DBUtil.createPreparedstatement("SELECT * FROM videodetails");
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				videos.add(rs.getString("fileName"));
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			DBUtil.closePreparedStatement();
			DBUtil.closeConnection();
		}

		return videos;
	}

}

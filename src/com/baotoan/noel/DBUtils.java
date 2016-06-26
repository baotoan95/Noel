package com.baotoan.noel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class DBUtils {
	public static Connection makeConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
//			String url = "jdbc:mysql://localhost:3306/christmas?useUnicode=true&amp;characterEncoding=UTF-8";
//			Connection con = DriverManager.getConnection(url, "root", "baotoan1142");
			String url = "jdbc:mysql://127.12.66.130:3306/happy?useUnicode=true&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "adminXB11rE3", "uKSAP-EUmQ49");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static Map<String, Object> get(String id) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			PreparedStatement pre = DBUtils.makeConnection().prepareStatement("SELECT content, ms_link, font_size FROM db WHERE id=?");
			pre.setString(1, id);
			ResultSet rs = pre.executeQuery();
			
			if(rs.next()) {
				result.put("content", rs.getString(1));
				result.put("ms_link", rs.getString(2));
				result.put("font_size", rs.getInt(3));
				return result;
			} else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean registry(String fb_id, String content, String ms_link, String code, int font_size) {
		PreparedStatement stm = null;
		Connection con = null;
		try {
			con = DBUtils.makeConnection();
			String url = "INSERT INTO db(id, fb_id, content, ms_link, font_size) values(?,?,?,?,?)";
			stm = con.prepareStatement(url);
			stm.setString(1, code);
			stm.setString(2, fb_id);
			stm.setString(3, content);
			stm.setString(4, ms_link);
			stm.setInt(5, font_size);
			int rows = stm.executeUpdate();
			if (rows > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stm != null) {
					stm.close();
				}

				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
}

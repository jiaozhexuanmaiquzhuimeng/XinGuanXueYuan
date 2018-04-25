package com.xg.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCUtils {

	private static DataSource dataSource = null;

	static {
		dataSource = new ComboPooledDataSource("javawebapp");
	}

	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	public static void releaseConnection(Connection connection) {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public static void release(ResultSet rs, PreparedStatement statement) {
		try {
			if(rs!=null) {
				rs.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		try {
			if(statement != null) {
				statement.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}

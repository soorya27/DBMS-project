package com.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
    private static final String USER = "soorya";
    private static final String PASSWORD = "soorya123";

    static {
        try {
            Class.forName("oracle.jdbc.OracleDriver"); // Load the driver
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Oracle JDBC Driver not found!", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public static void main(String[] args) {
        try (Connection conn = getConnection()) {
            System.out.println("Connected to Oracle Database successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

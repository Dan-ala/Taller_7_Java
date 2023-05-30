package co.edu.sena.taller2_3java.test_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/taller_java?serverTimezone=America/Bogota";
    private static String user = "Daniel";
    private static String pass = "Danke_Gott123";

    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user, pass);
        }
        return conn;
    }
} // BasicConnectionSingleton
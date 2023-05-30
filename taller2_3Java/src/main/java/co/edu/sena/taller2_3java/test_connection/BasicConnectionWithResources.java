package co.edu.sena.taller2_3java.test_connection;

import java.sql.*;

public class BasicConnectionWithResources { //Para probar y optimizar conectividad local
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/taller_java?serverTimezone=America/Bogota";
        String username = "Daniel";
        String password = "Danke_Gott123";

        String sql = "SELECT * FROM taller_java.users_tbl";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql))
        {
            while (rs.next()) {

                System.out.println(rs.getString("user_firstname"));

                        System.out.println(rs.getString("user_lastname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } // end try-catch
    } // main
} // BasicConnectionWithResources

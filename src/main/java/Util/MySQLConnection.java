package Util;

import java.sql.*;
public class MySQLConnection {
    public static Connection getConnection() throws SQLException{
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/audipolanco?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                "root",
                "root"
        );

    }
/*
    public static void main (String args[]) {
        try {
            Connection con = MySQLConnection.getConnection();
            System.out.println("Conexion establecida");
            con.close();
            System.out.println("Cerrando conexion");
        } catch (Exception ex) {
            System.out.println("Error de conexion");
            ex.printStackTrace();
        }
    }*/

}

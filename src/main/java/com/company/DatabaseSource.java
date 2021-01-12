package com.company;

import java.sql.*;

public class DatabaseSource {

    private static final String URL = "jdbc:mysql://localhost:3306/airport?useUnicode=true&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    Connection connection;

    public int getTotalAmount() {
        int sum = 0;

        // the query returns the max amount of passengers for each plane model in the current airport
        String currentQuery = "SELECT IF(FLOOR( COUNT( DISTINCT( pilotID )) / 2 ) < COUNT( DISTINCT( planes.serialNumber)), \n" +
                "\t\t   FLOOR( COUNT( DISTINCT( pilotID)) / 2),\n" +
                "           COUNT(DISTINCT(planes.serialNumber))) * planes.seats \n" +
                "           as AmountOfPersonsInAvailablePlanes\n" +
                "FROM profreadiness, planes\n" +
                "WHERE planes.model = profreadiness.planeModel\n" +
                "GROUP BY planeModel\n" +
                "ORDER BY seats DESC";

        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(currentQuery);
            while (resultSet.next()) {
                sum += Integer.parseInt(resultSet.getString("AmountOfPersonsInAvailablePlanes"));
            }
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return sum;
    }
}

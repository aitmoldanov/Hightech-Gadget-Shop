package kz.iitu.dao;

import kz.iitu.model.Users;

import java.sql.*;

public class UserDAO {
    private Connection getConnection() throws SQLException, ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/gadgetshop";
        String dbUser = "root";
        String dbPassword = "aitmoldanov";

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        return connection;
    }
    public Users checkLogin(String email, String password)
            throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet resultSet = statement.executeQuery();

        Users user = null;

        if (resultSet.next()) {
            user = new Users();
            user.setId(resultSet.getInt("id"));
            user.setName(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setEmail(resultSet.getString("email"));
        }

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }


    public Users getUserById(Integer id)
            throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();

        Users user = new Users();

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE id = ? LIMIT 1");
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        user.setId(id);
        user.setName(resultSet.getString("username"));
        user.setEmail(resultSet.getString("email"));
        user.setPassword(resultSet.getString("password"));

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }
}

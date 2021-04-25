package kz.iitu.dao;

import kz.iitu.model.Comment;
import kz.iitu.model.Post;
import kz.iitu.model.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDAO {

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/gadgetshop";
        String dbUser = "root";
        String dbPassword = "aitmoldanov";

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        return connection;
    }


    public List<Post> GetAllPosts()
            throws SQLException, ClassNotFoundException {
        List<Post> posts = new ArrayList<>();
        UserDAO userDao = new UserDAO();
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM posts");

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("postid");
            String topic = rs.getString("topic");
            String body = rs.getString("body");
            int likes = rs.getInt("likes");
            int dislikes = rs.getInt("dislikes");
            int userId = rs.getInt("userid");
            Users user = userDao.getUserById(userId);

            Post post = new Post(id,likes,dislikes,userId,topic,body,user);

            posts.add(post);
        }

        rs.close();
        ps.close();
        con.close();

        return posts;
    }

    public Post getPostById(Integer id) throws SQLException, ClassNotFoundException {
        UserDAO userDao = new UserDAO();
        Connection connection = getConnection();

        Post post = new Post();

        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM posts WHERE postid = ? LIMIT 1");
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();

        post.setUserId(resultSet.getInt("userid"));
        post.setText(resultSet.getString("body"));
        post.setTopic(resultSet.getString("topic"));
        post.setLike(resultSet.getInt("likes"));
        post.setDislike(resultSet.getInt("dislikes"));
        post.setUser(userDao.getUserById(resultSet.getInt("userid")));
        post.setId(id);
        post.setComments(getAllByPostId(id));

        return post;
    }
        public boolean like(Post post) throws SQLException, ClassNotFoundException {
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("UPDATE posts SET likes = ?,dislikes = ? WHERE postid = ?");
        ps.setInt(1, post.getLike());
        ps.setInt(2, post.getDislike());
        ps.setInt(3, post.getId());

        boolean liked = ps.executeUpdate() > 0;
        ps.close();
        con.close();

        return liked;
    }

    public List<Comment> getComments()
            throws SQLException, ClassNotFoundException {
        List<Comment> comments = new ArrayList<>();
        UserDAO userDao = new UserDAO();

        Connection connection = getConnection();

        PreparedStatement ps = connection.prepareStatement("SELECT * FROM comment");

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Integer id = rs.getInt("id");
            Integer postId = rs.getInt("postid");
            Integer userId = rs.getInt("userid");
            String comment = rs.getString("body");

            Users user = userDao.getUserById(userId);

            Comment com = new Comment(id,postId,userId,comment,user);

            comments.add(com);
        }

        rs.close();
        ps.close();
        connection.close();

        return comments;
    }

    public List<Comment> getAllByPostId(Integer pId) throws SQLException, ClassNotFoundException {
        List<Comment> comments = new ArrayList<>();
        UserDAO userDao = new UserDAO();

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM comment WHERE postid = ?");
        ps.setInt(1, pId);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Integer id = rs.getInt("id");
            Integer postId = rs.getInt("postid");
            Integer userId = rs.getInt("userid");
            String comment = rs.getString("comment");

            Users user = userDao.getUserById(userId);


            Comment com = new Comment(id, postId, userId, comment, user);

            comments.add(com);
        }

        return comments;
    }

    public int createComment(Comment comment) {
        int res = 0;

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO comment (postid, userid, body) " +
                    "VALUES (?, ?, ?)");

            ps.setInt(1, comment.getPostId());
            ps.setInt(2, comment.getUserId());
            ps.setString(3, comment.getBody());

            res = ps.executeUpdate();

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return res;
    }


    public Comment getCommentById(Integer id) throws SQLException, ClassNotFoundException {

        UserDAO userDao = new UserDAO();

        Connection con = getConnection();

        Comment com = new Comment();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM comment WHERE id = ? LIMIT 1");
        ps.setInt(1, id);

        ResultSet resultSet = ps.executeQuery();
        resultSet.next();

        com.setId(id);
        com.setPostId(resultSet.getInt("postid"));
        com.setBody(resultSet.getString("body"));
        com.setUserId(resultSet.getInt("userid"));

        return com;
    }
}

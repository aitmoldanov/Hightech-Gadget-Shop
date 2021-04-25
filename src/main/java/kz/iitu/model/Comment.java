package kz.iitu.model;

import java.io.Serializable;

public class Comment implements Serializable {
    private int id,postId,userId;
    private String body;
    private Users user;

    public Comment(int id, int postId, int userId, String body, Users user) {
        this.id = id;
        this.postId = postId;
        this.userId = userId;
        this.body = body;
        this.user = user;
    }

    public Comment(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }
}


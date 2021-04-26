<%@ page import="java.util.List" %>
<%@ page import="kz.iitu.model.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Post Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <jsp:useBean id="post" class="kz.iitu.model.Post" scope="request"/>
    <jsp:setProperty name="post" property="*"/>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-6" style="margin-bottom: 150px">
    <div class="row">
        <div class="col-md-8">
            <div class="post-content" style="padding: 50px">
                <div class="post-container">
                    <div class="post-detail">
                        <div class="user-info">
                            <h5><a href="#" class="profile-link"><%=post.getUser().getName()%></a> <span class="following">following</span></h5>
                            <p class="text-muted"><%=post.getTopic()%></p>
                        </div>
                        <% if (user.getName() != null) { %>
                        <form action="LikeServlet" method="GET">
                            <div class="reaction">
                                <input type="hidden" name="id" value="<%=post.getId()%>">
                                <button type="submit" class="btn btn-outline-success" name="like" value="true"><i class="fa fa-thumbs-up"></i> <%=post.getLike()%></button>
                                <button type="submit" class="btn btn-outline-danger" name="dislike" value="true"><i class="fa fa-thumbs-down"></i> <%=post.getDislike()%></button>
                            </div>
                        </form>
                        <% } %>
                        <% if (user.getName() == null) { %>
                        <form action="LikeServlet" method="get">
                            <div class="reaction">
                                <a type="submit" href="Login.jsp" class="btn btn-outline-success"><i class="fa fa-thumbs-up"><%=post.getLike()%></i> </a>
                                <a type="submit" href="Login.jsp" class="btn btn-outline-danger"><i class="fa fa-thumbs-down"><%=post.getDislike()%></i> </a>
                            </div>
                        </form>
                        <% } %>
                        <div class="line-divider"></div>
                        <div class="post-text">
                            <p><%=post.getText()%></p>
                        </div>
                        <% for (Comment comment: post.getComments()) { %>
                        <div class="line-divider"></div>
                        <div class="post-comment">
                            <p><a href="#" class="profile-link"><%=comment.getUser().getName()%> </a><i class="em em-laughing"></i> <%=comment.getBody()%> </p>
                        </div>
                        <% } %>
                        <% if (user.getName() != null) { %>
                        <form action="CommentServlet" method="post">
                        <div class="post-comment">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="profile-photo-sm">
                            <input type="hidden" name="postId" value="<%=post.getId()%>">
                            <input type="hidden" name="userId" value="<%=user.getId()%>">
                            <input type="text" class="form-control" name="comment" placeholder="Post a comment"> <br>
                            <button type="submit" class="btn btn-secondary">Send</button>
                        </div>
                        </form>
                        <%}%>
                        <% if (user.getName() == null) { %>
                        <div class="post-comment">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="profile-photo-sm">
                            <input type="text" class="form-control" name="comment" placeholder="Post a comment" readonly> <br>
                        </div>
                        <%}%>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>


<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shop</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
s
    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">

</head>
<body>
<!-- Navigation -->
<%@ include file="/common/navbar.jsp" %>
<%
    Connection con=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gadgetshop","root","aitmoldanov");
        PreparedStatement ps = con.prepareStatement("SELECT * from gadgets");
        ResultSet rs=ps.executeQuery();
%>
<header></header>
<!-- Page Content -->
<div class="container">
    <!-- Page Features -->
    <div class="row text-center">
        <%while(rs.next()){%>
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
                <img class="card-img-top" src=<%= rs.getString("linkToImage")%> alt="">
                <div class="card-body">
                    <h4 class="card-title"><%= rs.getString("model")%></h4>
                    <p class="card-text"><%= rs.getString("price")%> tg</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-warning">Buy</a>
                </div>
            </div>
        </div>
<%}

        con.close();
        }catch(Exception e){System.out.println(e);}

%>
    </div>

</div>

<!-- Footer -->
<%@ include file="/footer.jsp" %>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

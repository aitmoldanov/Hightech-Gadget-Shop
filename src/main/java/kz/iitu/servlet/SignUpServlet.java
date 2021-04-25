package kz.iitu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "SignUpServlet")
public class SignUpServlet extends HttpServlet {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DATABASE_URL = "jdbc:mysql://localhost:3306/gadgetshop";
    static final String DATABASE_USER = "root";
    static final String DATABASE_PASSWORD = "aitmoldanov";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String u=request.getParameter("username");
        String p=request.getParameter("password");
        String e=request.getParameter("email");

        try{
            Class.forName(JDBC_DRIVER);
            Connection con= DriverManager.getConnection(
                    DATABASE_URL,DATABASE_USER,DATABASE_PASSWORD);

            PreparedStatement ps=con.prepareStatement(
                    "insert into users(username,password,email) values(?,?,?)");

            ps.setString(1,u);
            ps.setString(2,p);
            ps.setString(3,e);

            int i=ps.executeUpdate();
            if(i>0){
                HttpSession session = request.getSession();
                session.setAttribute("username",u);
                out.print("Successfully added!");
                request.getRequestDispatcher("Main.jsp").include(request,response);}
        }catch (Exception e2) {System.out.println(e2);}

        out.close();
    }

}

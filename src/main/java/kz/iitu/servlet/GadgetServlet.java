package kz.iitu.servlet;

import kz.iitu.model.Gadgets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PhoneServlet")
public class GadgetServlet extends HttpServlet {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DATABASE_URL = "jdbc:mysql://localhost:3306/gadgetshop";
    static final String DATABASE_USER = "root";
    static final String DATABASE_PASSWORD = "aitmoldanov";
    public GadgetServlet() {
    }
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gadgetshop","root","aitmoldanov");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Gadgets> gadgetsList =new ArrayList<Gadgets>();
        PrintWriter out=response.getWriter();
        try{
            Connection con = GadgetServlet.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * from gadgets");
            ResultSet rs=ps.executeQuery();

            while(rs.next()){
                Gadgets p=new Gadgets();
                p.setId(rs.getInt(1));
                p.setModel(rs.getString(2));
                p.setPrice(rs.getString(3));
                p.setLinkToImage(rs.getString(4));
                gadgetsList.add(p);
            }
            con.close();
        } catch(Exception e){e.printStackTrace();}

        }

    }

package kz.iitu.dao;

import kz.iitu.model.Gadgets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GadgetsDAO {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gadgetshop","root","aitmoldanov");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static int save(Gadgets e){
        int status=0;
        try{
            Connection con= GadgetsDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "insert into gadgets(model,price,linkToImage) values (?,?,?)");
            ps.setString(1,e.getModel());
            ps.setString(2,e.getPrice());
            ps.setString(3,e.getLinkToImage());

            status=ps.executeUpdate();

            con.close();
        }catch(Exception ex){ex.printStackTrace();}

        return status;
    }
    public static int update(Gadgets e){
        int status=0;
        try{
            Connection con= GadgetsDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "update gadgets set model=?,price=?,linkToImage=? where id=?");
            ps.setString(1,e.getModel());
            ps.setString(2,e.getPrice());
            ps.setString(3,e.getLinkToImage());
            ps.setInt(4,e.getId());

            status=ps.executeUpdate();

            con.close();
        }catch(Exception ex){ex.printStackTrace();}

        return status;
    }
    public static int delete(int id){
        int status=0;
        try{
            Connection con= GadgetsDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("delete from gadgets where id=?");
            ps.setInt(1,id);
            status=ps.executeUpdate();

            con.close();
        }catch(Exception e){e.printStackTrace();}

        return status;
    }
    public static Gadgets getPhoneById(int id){
        Gadgets e=new Gadgets();

        try{
            Connection con= GadgetsDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from gadgets where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setModel(rs.getString(2));
                e.setPrice(rs.getString(3));
                e.setLinkToImage(rs.getString(4));
            }
            con.close();
        }catch(Exception ex){ex.printStackTrace();}

        return e;
    }
    public static List<Gadgets> getAllPhones(){
        List<Gadgets> list=new ArrayList<Gadgets>();

        try{
            Connection con= GadgetsDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from gadgets");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Gadgets e=new Gadgets();
                e.setId(rs.getInt(1));
                e.setModel(rs.getString(2));
                e.setPrice(rs.getString(3));
                e.setLinkToImage(rs.getString(4));
                list.add(e);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}

        return list;
    }
}

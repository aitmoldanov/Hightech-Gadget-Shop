package kz.iitu.servlet;

import kz.iitu.dao.GadgetsDAO;
import kz.iitu.model.Gadgets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/GadgetsListServlet")
public class GadgetsListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<a href='AdminPanel.jsp'>Add new Gadget</a>");

        List<Gadgets> list= GadgetsDAO.getAllPhones();

        out.print("<table border='3' width='100%'");
        out.print("<tr>" +
                "<th>Id</th>" +
                "<th>Model</th>" +
                "<th>Price</th>" +
                "<th>Image</th>" +
                "<th>Edit</th>" +
                "<th>Delete</th>" +
                "</tr>");
        for(Gadgets gadgets:list){
            out.print("<tr>" +
                    "<td>"+gadgets.getId()+"</td>" +
                    "<td>"+gadgets.getModel()+ "</td>" +
                    "<td>"+gadgets.getPrice()+ "</td> " +
                    "<td><img src= '"+gadgets.getLinkToImage()+"' width=100 height=100 ></td>" +
                    "<td><a href='EditGadgetsServletView?id="+gadgets.getId()+"'>edit</a></td> " +
                    "<td><a href='DeleteGadgetsServlet?id="+gadgets.getId()+"'>delete</a></td>" +
                    "</tr>");
        }
        out.print("</table>");

        out.close();
    }
}  

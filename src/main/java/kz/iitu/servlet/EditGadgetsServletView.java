package kz.iitu.servlet;

import kz.iitu.model.Gadgets;
import kz.iitu.dao.GadgetsDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/EditGadgetsServletView")
public class EditGadgetsServletView extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1>Update Gadget</h1>");
        String sid=request.getParameter("id");
        int id=Integer.parseInt(sid);

        Gadgets e= GadgetsDAO.getPhoneById(id);

        out.print("<form action='EditGadgetsServlet' method='post'>");
        out.print("<table>");
        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+e.getId()+"'/></td></tr>");
        out.print("<tr><td>Model:</td><td><input type='text' name='name' value='"+e.getModel()+"'/></td></tr>");
        out.print("<tr><td>Price:</td><td><input type='text' name='price' value='"+e.getPrice()+"'/> </td></tr>");
        out.print("<tr><td>ImageLink:</td><td><input type='text' name='imgLink' value='"+e.getLinkToImage()+"'/></td></tr>");
        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");
        out.print("</table>");
        out.print("</form>");

        out.close();
    }
}  

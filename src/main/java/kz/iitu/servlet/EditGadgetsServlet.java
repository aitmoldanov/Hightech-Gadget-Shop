package kz.iitu.servlet;

import kz.iitu.dao.GadgetsDAO;
import kz.iitu.model.Gadgets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/EditGadgetsServlet")
public class EditGadgetsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String sid=request.getParameter("id");
        int id=Integer.parseInt(sid);
        String name=request.getParameter("model");
        String price=request.getParameter("price");
        String imgLink=request.getParameter("linkToImage");

        Gadgets e=new Gadgets();
        e.setId(id);
        e.setModel(name);
        e.setPrice(price);
        e.setLinkToImage(imgLink);

        int status= GadgetsDAO.update(e);
        if(status>0){
            response.sendRedirect("GadgetsListServlet");
        }else{
            out.println("Sorry! unable to update record");
        }

        out.close();
    }

}  

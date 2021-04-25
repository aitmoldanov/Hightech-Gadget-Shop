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
@WebServlet("/SaveGadgetsServlet")
public class SaveGadgetsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String model=request.getParameter("model");
        String price=request.getParameter("price");
        String imgLink=request.getParameter("linkToImage");

        Gadgets gadgets = new Gadgets();
        gadgets.setModel(model);
        gadgets.setPrice(price);
        gadgets.setLinkToImage(imgLink);


        int status = GadgetsDAO.save(gadgets);
        if(status>0){
            out.println("<p>Successfully added!</p><br>");
            out.println("<a href=\"GadgetsListServlet\">List of gadgets</a>");
        }else{
            out.println("Something went wrong! Try again!");
        }

        out.close();
    }

}  

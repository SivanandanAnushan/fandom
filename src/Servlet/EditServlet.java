package Servlet;

import Beans.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by Bimal on 5/1/2016.
 */
@WebServlet(name = "EditServlet")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        Item itm = new Item();
        int chk = 0;

        itm.setItemId(request.getParameter("id"));
        itm.setItemName(request.getParameter("name"));
        itm.setItemCategory(request.getParameter("category"));
        itm.setItemPrice(request.getParameter("price"));
        itm.setItemQuantity(request.getParameter("quantity"));
        itm.setItemDescription(request.getParameter("description"));
        itm.setItemDate(request.getParameter("addDate"));

        try {
            chk = itm.editItem(itm);
        }
        catch (Exception ex) {
            Logger.getLogger(InsertServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(chk == 1)
        {
            String msg = "Item Successfully Updated!";

            response.sendRedirect("/DisplayServlet?update="+msg+"");

        }
        else
        {
            String msg = "Error Occured!";

            response.sendRedirect("/DisplayServlet?update_err="+msg+"");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

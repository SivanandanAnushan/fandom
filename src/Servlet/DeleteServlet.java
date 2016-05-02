package Servlet;

import Beans.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by Bimal on 5/1/2016.
 */
@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int chk = 0;
        Item itm = new Item ();
        String id = request.getParameter("itemid");

        try {
            chk = itm.deleteItem(id);
        }
        catch (Exception ex) {
            Logger.getLogger(InsertServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String msg = "Item Successfully Deleted!";

        response.sendRedirect("/DisplayServlet?delete="+msg+"");

    }
}

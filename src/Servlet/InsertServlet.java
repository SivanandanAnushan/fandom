package Servlet;

import Beans.Item;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by Bimal on 4/30/2016.
 */
@WebServlet(name = "InsertServlet")

@MultipartConfig(maxFileSize = 16177215)
public class InsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Item itm = new Item();

        itm.setItemId(request.getParameter("id"));
        itm.setItemName(request.getParameter("name"));
        itm.setItemCategory(request.getParameter("category"));
        itm.setItemPrice(request.getParameter("price"));
        itm.setItemQuantity(request.getParameter("quantity"));
        itm.setItemDescription(request.getParameter("description"));
        //itm.setItemDate(request.getParameter("addDate"));
//        InputStream inputStream = null;
//        Part filePart = request.getPart("img");
//        if (filePart != null) {
//
//            inputStream = filePart.getInputStream();
//            itm.setItemImage(inputStream);
//        }

        int check = itm.checkItem(request.getParameter("id"));
        if(check == 1)
        {
            String err2 = "Item with the same ID exists!";
            request.setAttribute("errorMsg2",err2);

            RequestDispatcher rd1 = request.getRequestDispatcher("ap-productNew.jsp");
            rd1.forward(request, response);
        }
        else
        {
            try {
                itm.insertItem(itm);
            }
            catch (SQLException ex) {
                Logger.getLogger(InsertServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

            String msg = "Item Successfully Added!";
            request.setAttribute("successMsg",msg);

            RequestDispatcher rd1 = request.getRequestDispatcher("ap-productNew.jsp");
            rd1.forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

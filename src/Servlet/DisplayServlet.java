package Servlet;

import Beans.Item;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Bimal on 5/1/2016.
 */
@WebServlet(name = "DisplayServlet")
public class DisplayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList lst = new ArrayList();
        Item itm = new Item();

        lst = itm.displayItem();

        request.setAttribute("Items",lst);

        String updateMSG = request.getParameter("update");
        request.setAttribute("upMsg",updateMSG);

        String errMSG = request.getParameter("update_err");
        request.setAttribute("erMsg",errMSG);

        String delMSG = request.getParameter("delete");
        request.setAttribute("delMsg",delMSG);

        RequestDispatcher rd = request.getRequestDispatcher("ap-productcatlog.jsp");
        rd.forward(request, response);

    }
}

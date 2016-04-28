package Logging;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by asank on 4/29/2016.
 */
@WebServlet(name = "Logging.S_Logging", urlPatterns = "/log")
public class S_Logging extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un = request.getParameter("un");
        String pw = request.getParameter("pw");
        String dbun = "asanka";
        String dbpw = "123";
        PrintWriter out = response.getWriter();

        if(un != null){
            if(pw!=null){
                if(un.equals(dbun)){
                    if(pw.equals(dbpw)){
                        response.sendRedirect("index.jsp");
                    }
                    else {
                        out.println("<html>");
                        out.println("Wrong Password");
                        out.println("</html>");
                    }
                }else {
                    out.println("<html>");
                    out.println("Wrong Username");
                    out.println("</html>");
                }

            }else {
                out.println("<html>");
                out.println("Type your Password");
                out.println("</html>");
            }

        }else {
            out.println("<html>");
            out.println("Type Your Username");
            out.println("</html>");
        }




        out.println("<html>");
        out.println("<b>test</b>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package Servlet;

import Connection.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Bimal on 5/2/2016.
 */
@WebServlet(name = "ImgServlet")
public class ImgServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        int imageID = Integer.parseInt(request.getParameter("id"));
        ServletOutputStream out = response.getOutputStream();

        DbConnection db = new DbConnection();
        Connection conn = db.getConnection();

        try{
            PreparedStatement ps1 = conn.prepareStatement("Select image FROM product WHERE P_ID = ?");

            ps1.setInt(1, imageID);
            ResultSet rs = ps1.executeQuery();
            Blob image = null;

            while(rs.next())
            {
                image = rs.getBlob(1);

            }

            response.setContentType("image/jpeg");
            InputStream readImg = image.getBinaryStream();
            int len = (int)image.length();

            int bufferSize = 1024;
            byte [] img = new byte[bufferSize];

            while ((len = readImg.read(img)) != -1)
            {
                out.write(img, 0, len);
                out.flush();
            }

            readImg.close();


            conn.close();

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

    }
}

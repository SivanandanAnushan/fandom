package main;

import dbpack.C_dbcn;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by asank on 5/1/2016.
 */
@WebServlet(name = "S_allproduct")
public class S_allproduct extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int p_id1;
        String p_nm1;
        String p_dsc1;
        String p_img1;
        Connection con;
        PreparedStatement pstmnt1;
        ResultSet rs1;
        //PrintWriter out = response.getWriter();

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                //language=MySQL
                String qry1 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='1'";
                String qry2 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='2'";
                String qry3 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='3'";
                String qry4 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='4'";
                String qry5 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='5'";
                String qry6 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='6'";
                String qry7 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='7'";
                String qry8 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='8'";
                String qry9 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='9'";
                String qry10 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='10'";
                String qry11 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='11'";
                String qry12 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product WHERE P_ID='12'";
                //DataSet
                pstmnt1 = con.prepareStatement(qry1);
                rs1 = pstmnt1.executeQuery();
                while (rs1.next()) {
                    p_id1 = rs1.getInt(1);
                    p_nm1 = rs1.getString(2);
                    p_dsc1 = rs1.getString(3);
                    p_img1 = rs1.getString(4);

                    request.setAttribute("pid1", p_id1);
                    request.setAttribute("pnm1", p_nm1);
                    request.setAttribute("pdc1", p_dsc1);
                    request.setAttribute("pimg1", p_img1);

                }
                RequestDispatcher disptch = request.getRequestDispatcher("/allproducts.jsp");
                if (disptch != null) {
                    disptch.forward(request, response);
                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}


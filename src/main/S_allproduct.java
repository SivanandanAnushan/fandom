package main;

import dbpack.C_dbcn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by asank on 5/1/2016.
 */
@WebServlet(name = "S_allproduct")
public class S_allproduct extends HttpServlet {
    private String p_id;
    private String p_nm;
    private String p_dsc;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con;
        PreparedStatement pstmnt;
        ResultSet rs;

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                //language=MySQL
                String qry = "SELECT P_ID,P_Name,P_Desc FROM product";
                pstmnt = con.prepareStatement(qry);
                rs=pstmnt.executeQuery();
                while (rs.next()){
                    p_id=rs.getString(1);
                    p_nm=rs.getString(2);
                    p_dsc=rs.getString(3);
                }
                setP_id(p_id);
                setP_nm(p_nm);
                setP_dsc(p_dsc);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    public String getP_id() {
        return p_id;
    }

    private void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getP_nm() {
        return p_nm;
    }

    private void setP_nm(String p_nm) {
        this.p_nm = p_nm;
    }

    public String getP_dsc() {
        return p_dsc;
    }

    private void setP_dsc(String p_dsc) {
        this.p_dsc = p_dsc;
    }
}

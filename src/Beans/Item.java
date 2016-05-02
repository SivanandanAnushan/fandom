package Beans;

import Connection.DbConnection;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Item {

    private String itemId;
    private String itemName;
    private String itemCategory;
    private String itemPrice;
    private String itemQuantity;
    private String itemDescription;
    private String itemDate;
    private InputStream itemImage;



    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemCategory() {
        return itemCategory;
    }

    public void setItemCategory(String itemCategory) {
        this.itemCategory = itemCategory;
    }

    public String getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(String itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getItemQuantity() {
        return itemQuantity;
    }

    public void setItemQuantity(String itemQuantity) {
        this.itemQuantity = itemQuantity;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }

    public String getItemDate() {
        return itemDate;
    }

    public void setItemDate(String itemDate) {
        this.itemDate = itemDate;
    }

    public InputStream getItemImage() {
        return itemImage;
    }

    public void setItemImage(InputStream itemImage) {
        this.itemImage = itemImage;
    }


    public int insertItem(Item itm) throws SQLException {
        int chk = 0;
        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();

        try {

            PreparedStatement ps1 = conn.prepareStatement("INSERT INTO product (P_ID,P_Name,P_Category,P_Price,P_Qntty,P_Desc) VALUES ( ?, ?, ?, ?, ?, ?)");

            ps1.setString(1, itm.getItemId());
            ps1.setString(2, itm.getItemName());
            ps1.setString(3, itm.getItemCategory());
            ps1.setString(4, itm.getItemPrice());
            ps1.setString(5, itm.getItemQuantity());
            ps1.setString(6, itm.getItemDescription());


            chk = ps1.executeUpdate();

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return chk;

    }

    public int checkItem(String id)
    {
        int chk = 0;

        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();
        ResultSet rs = null;

        try{

            PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM product WHERE P_ID = ?");
            ps1.setString(1, id);

            rs = ps1.executeQuery();

            if(rs.next())
            {
                chk = 1;
            }

            conn.close();

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return chk;
    }

    public ArrayList displayItem()
    {
        ArrayList<Item> items = new ArrayList();

        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();
        ResultSet rs = null;

        try{

            Item itm = new Item();
            PreparedStatement ps1 = conn.prepareStatement("SELECT P_ID,P_Name,P_Category,P_Price,P_Qntty,P_Desc,P_add_date FROM product");
            rs = ps1.executeQuery();

            while(rs.next())
            {
                itm = new Item();
                itm.setItemId(String.valueOf(rs.getString("P_ID")));
                itm.setItemName(String.valueOf(rs.getString("P_Name")));
                itm.setItemCategory(String.valueOf(rs.getString("P_Category")));
                itm.setItemPrice(String.valueOf(rs.getString("P_Price")));
                itm.setItemQuantity(String.valueOf(rs.getString("P_Qntty")));
                itm.setItemDescription(String.valueOf(rs.getString("P_Desc")));
                itm.setItemDate(String.valueOf(rs.getString("P_add_date")));

                items.add(itm);
            }

            conn.close();

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return items;
    }

    public ArrayList getItembyID(String ID)
    {
        ArrayList<Item> items = new ArrayList();

        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();
        ResultSet rs = null;

        try{

            Item itm = new Item();
            PreparedStatement ps1 = conn.prepareStatement("SELECT P_ID,P_Name,P_Category,P_Price,P_Qntty,P_Desc, P_add_date FROM product WHERE P_ID = '"+ID+"'");
            rs = ps1.executeQuery();

            while(rs.next())
            {
                itm = new Item();
                itm.setItemId(String.valueOf(rs.getString("P_ID")));
                itm.setItemName(String.valueOf(rs.getString("P_Name")));
                itm.setItemCategory(String.valueOf(rs.getString("P_Category")));
                itm.setItemPrice(String.valueOf(rs.getString("P_Price")));
                itm.setItemQuantity(String.valueOf(rs.getString("P_Qntty")));
                itm.setItemDescription(String.valueOf(rs.getString("P_Desc")));
                itm.setItemDate(String.valueOf(rs.getString("P_add_date")));

                items.add(itm);
            }

            conn.close();

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return items;
    }


    public int editItem(Item itm){

        int chk = 0;
        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();

        try{

            PreparedStatement ps1 = conn.prepareStatement("UPDATE product SET P_Name= ?, P_Category= ?, P_Price=?, P_Qntty=?, P_Desc=? WHERE P_ID= ? ");


            ps1.setString(1, itm.getItemName());
            ps1.setString(2, itm.getItemCategory());
            ps1.setString(3, itm.getItemPrice());
            ps1.setString(4, itm.getItemQuantity());
            ps1.setString(5, itm.getItemDescription());
            ps1.setString(6, itm.getItemId());

            chk = ps1.executeUpdate();

            conn.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }

        return chk;
    }

    public int deleteItem(String id)
    {
        int chk = 0;

        DbConnection connection = new DbConnection();
        Connection conn = connection.getConnection();
        ResultSet rs = null;

        try{

            PreparedStatement ps1 = conn.prepareStatement("DELETE FROM product WHERE P_ID = ?");
            ps1.setString(1, id);

            chk = ps1.executeUpdate();


            conn.close();

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return chk;
    }

    }


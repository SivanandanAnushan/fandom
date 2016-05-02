<%--
  Created by IntelliJ IDEA.
  User: Bimal
  Date: 5/1/2016
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Beans.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body background bgcolor="#f5f5f5">
<div align="center"> <h2> Products </h2></div>
<div align="center">
    <%
        Item itm = new Item();
        String id  = request.getParameter("itemid");

        ArrayList<Item> list = new ArrayList();
        list = itm.getItembyID(id);

        for (Item items : list){
    %>
    <form method="POST" action="EditServlet">
        <table>
            <td><h3> Update Product </h3></td>
            <tr>
                <td>Product ID:</td>
                <td><input type="text" name="id" value="<%out.println(items.getItemId());%>" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<%out.println(items.getItemName());%>" required /></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td><select name="category"  required>
                    <option></option>
                    <option value="<%out.println(items.getItemCategory());%>" selected="selected"><%out.println(items.getItemCategory());%></option>
                    <option>Action</option>
                    <option>Comedy</option>
                    <option>Thriller</option>
                    <option>Drama</option>
                    <option>Biography</option>
                </select> </td>
            </tr>
            <td><hr></td>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" value="<%out.println(items.getItemPrice());%>" required /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><input type="text" name="quantity" value="<%out.println(items.getItemQuantity());%>" required /></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><textarea type="text" name="description"  rows="4" cols="22" required><%out.println(items.getItemDescription());%></textarea></td>
            </tr>
            <tr>
                <td>Date:</td>
                <td><input type="text" name="addDate" value="<%out.println(items.getItemDate());%>" readonly="readonly" /></td>
            </tr>
            <td><hr></td>
            <tr>
                <td>Image:</td>
                <td><img src="" width="125" height="150" name=""/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="file" name="img" /></td>
            </tr>
            <tr>
                <td><input onclick="return confirm('Are you sure you want to Update this Product?');" type="submit" value="Update" /></td>
                <td></td>
            </tr>
        </table>
    </form>
    <%}%>
</div>
<br><br><br>


</body>
</html>
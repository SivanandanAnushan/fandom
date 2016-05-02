<%--
  Created by IntelliJ IDEA.
  User: Bimal
  Date: 5/1/2016
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product </title>


</head>
<body background bgcolor="#f5f5f5">

<div align="center"> <h2>Products </h2></div>
<div align="center">
    <form method="POST" action="InsertServlet" id="form1" enctype="multipart/form-data" >
        <table>
            <td><h3> Add a new Product </h3></td>
            <tr>
                <td>Product ID:</td>
                <td><input type="text" name="id" value="" required/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="" required /></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td><select name="category" required>
                    <option></option>
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
                <td><input type="text" name="price" value="" required /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><input type="text" name="quantity" value="" required /></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><textarea type="text" name="description" rows="4" cols="22" required></textarea></td>
            </tr>
            <tr>
                <td>Date:</td>
                <td><input type="text" name="addDate" value="Current D/T auto add" readonly/></td>

            </tr>



            <tr>
                <td></td>
                <td><input type="file" id="imgInp" name="img" size="50"/></td>
            </tr>
            <tr>
                <td>Image [Poster]:</td>
                <td><img id="blah" src="#" width="145" height="200" name=""/></td>
            </tr>
            <tr></tr>

            <tr>
                <td><input type="submit" value="Insert" name="submit" /></td>
                <td></td>
            </tr>
        </table>

    </form>
    <div>
        <p>
            <% Object  msg  = null;
                msg = request.getAttribute("successMsg");
                if(msg == null)
                {

                }
                else
                {
                    out.println(msg.toString());
                } %>
        </p>
    </div>
    <div>
        <p>
            <% Object  msg1  = null;
                msg1 = request.getAttribute("errorMsg2");
                if(msg1 == null)
                {

                }
                else
                {
                    out.println(msg1.toString());
                } %>
        </p>
    </div>
</div>
<br><br><br>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function(){
        readURL(this);
    });
</script>


</body>


</html>
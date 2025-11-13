<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mẫu Form HTML5</title>
</head>

<body>
    <h1>Update Product</h1>
    <form action="../saveProduct/${product.productID}" method="post">
        <label for="productID">Product ID: ${product.productID}</label><br>
        <select id="categoryID" name="categoryID">
            <c:forEach var="category" items="${categories}">
                <option value="${category.categoryID}">${category.categoryName}</option> 
            </c:forEach>
        </select>
        <br><br>
        <label for="productName">Product Name:</label><br>
        <input type="text" id="productName" name="productName" value="${product.productName}"><br><br>
        <label for="price">Price:</label><br>
        <input type="number" id="price" name="price" value="${product.price}"><br><br>
        <label for="description">Description:</label><br>
        <input type="text" id="description" name="description" value="${product.description}"><br><br>
        <input type="submit" value="Update Product">
    </form>
</body>
</html>
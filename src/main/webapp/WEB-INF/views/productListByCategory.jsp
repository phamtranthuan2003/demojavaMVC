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
    <h1>Product List By Category</h1>
    <table>
        <tr>
            <th>productID</th>
            <th>productName</th>
            <th>price</th>
            <th>description</th>
            <th>actions</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.productID}</td>
                <td>${product.productName}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td><a href="../updateProduct/${product.productID}">Sửa</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="../../categories">quay lại</a>
</body>
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f5f5f5;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            text-align: left;
            font-weight: bold;
            text-transform: uppercase;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        tr:last-child td {
            border-bottom: none;
        }

        /* Bỏ gạch chân thẻ a */
        a {
            text-decoration: none;
            color: #2196F3;
            font-weight: 500;
            transition: color 0.3s;
        }

        a:hover {
            color: #0b7dda;
            text-decoration: underline;
        }

        /* Responsive */
        @media (max-width: 768px) {
            table {
                font-size: 14px;
            }
            
            th, td {
                padding: 8px;
            }
        }
    </style>
</html>
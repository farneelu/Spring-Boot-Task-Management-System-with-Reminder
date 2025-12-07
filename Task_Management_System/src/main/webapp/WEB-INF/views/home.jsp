<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Management</title>

<!-- ✅ Warm Color Internal CSS -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fff3e0; /* Warm light peach */
        margin: 0;
        padding: 20px;
        text-align: center;
    }

    h1 {
        color: #e65100; /* Deep warm orange */
        margin-bottom: 20px;
    }

    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 12px rgba(0,0,0,0.15);
        border-radius: 8px;
        overflow: hidden;
    }

    th {
        background-color: #ff9800; /* Warm orange */
        color: white;
        padding: 12px;
    }

    td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ffd180;
    }

    tr:hover {
        background-color: #fff8e1; /* Soft warm hover */
    }

    a {
        text-decoration: none;
        font-weight: bold;
        color: #e65100;
    }

    a:hover {
        color: #bf360c;
        text-decoration: underline;
    }

    /* ✅ Warm Green Add Button */
    .btn-add {
        display: inline-block;
        margin-top: 20px;
        padding: 12px 26px;
        background-color: #ff7043; /* Warm coral */
        color: white;
        border-radius: 25px;
        font-size: 16px;
        transition: 0.3s ease;
    }

    .btn-add:hover {
        background-color: #e64a19;
        transform: scale(1.05);
    }
</style>

</head>
<body>

    <h1>Welcome to Task Management System!</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th colspan="2">Action</th>
        </tr>

        <c:forEach items="${task}" var="t">
            <tr>
                <td>${t.id}</td>
                <td>${t.title}</td>
                <td>${t.description}</td>

                <td>
                    <a href="update/${t.id}">Update</a>
                </td>

                <td>
                    <a href="delete/${t.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="add-task" class="btn-add">Add Task</a>

</body>
</html>

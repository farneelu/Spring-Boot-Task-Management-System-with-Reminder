<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Task</title>

<!-- ✅ Internal Warm CSS -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fff3e0; /* Warm peach */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        width: 360px;
        text-align: center;
    }

    h2 {
        color: #e65100;
        margin-bottom: 20px;
    }

    label {
        display: block;
        text-align: left;
        font-weight: bold;
        margin-top: 12px;
        color: #444;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-top: 6px;
        border: 1px solid #ffcc80;
        border-radius: 5px;
        outline: none;
        font-size: 15px;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #ff9800;
        box-shadow: 0 0 5px rgba(255,152,0,0.5);
    }

    input[type="submit"] {
        margin-top: 22px;
        width: 100%;
        padding: 12px;
        background-color: #ffa726; /* Warm orange button */
        border: none;
        border-radius: 25px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #f57c00;
        transform: scale(1.03);
    }
</style>

</head>
<body>

<div class="form-container">
    <h2>Update Task</h2>

    <form action="${pageContext.request.contextPath}/update-handler" method="post">

        <label>ID:</label>
        <input type="number" name="id" value="${task.id}" readonly />

        <label>Title:</label>
        <input type="text" name="title" required value="${task.title}" />

        <label>Description:</label>
        <input type="text" name="description" required value="${task.description}" />

        <input type="submit" value="Update Task"/>

    </form>
</div>

</body>
</html>

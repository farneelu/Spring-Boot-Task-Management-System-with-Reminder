<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Task</title>

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
        width: 350px;
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
        margin-top: 10px;
        color: #444;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 6px;
        border: 1px solid #ffcc80;
        border-radius: 5px;
        outline: none;
        font-size: 15px;
    }

    input[type="text"]:focus {
        border-color: #ff9800;
        box-shadow: 0 0 5px rgba(255,152,0,0.5);
    }

    input[type="submit"] {
        margin-top: 20px;
        width: 100%;
        padding: 12px;
        background-color: #ff7043;
        border: none;
        border-radius: 25px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #e64a19;
        transform: scale(1.03);
    }
</style>

</head>
<body>

<div class="form-container">
    <h2>Add New Task</h2>

    <form action="handle-task" method="post">

        <label>Title:</label>
        <input type="text" name="title" required />

        <label>Description:</label>
        <input type="text" name="description" required />
        
        <label>Reminder Date & Time:</label>
        <input type="datetime-local" name="dueDate" required />
       
        <input type="submit" value="Add Task"/>

    </form>
</div>

</body>
</html>

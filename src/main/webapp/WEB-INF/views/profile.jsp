<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="profile-container">
    <header>
        <h2><i class="fas fa-user-circle"></i> User Profile</h2>
        <a href="/view/logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </header>

    <div class="profile-details">
        <table>
            <tr>
                <th>Email:</th>
                <td>${user.email}</td>
            </tr>
            <tr>
                <th>Name:</th>
                <td>${user.name}</td>
            </tr>

        </table>
    </div>

    <div class="back-link">
        <a href="/view/home"><i class="fas fa-arrow-left"></i> Back to Home</a>
    </div>
</div>

<style>
    .profile-container {
        width: 60%;
        margin: auto;
        padding: 30px;
        border: 1px solid #ccc;
        border-radius: 15px;
        background-color: #f9f9f9;
        margin-top: 50px;
        font-family: Arial, sans-serif;
    }

    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .logout-btn {
        text-decoration: none;
        background: #d9534f;
        color: white;
        padding: 8px 15px;
        border-radius: 5px;
    }

    .profile-details table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    .profile-details th, .profile-details td {
        text-align: left;
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .back-link {
        margin-top: 20px;
    }
</style>

</body>
</html>

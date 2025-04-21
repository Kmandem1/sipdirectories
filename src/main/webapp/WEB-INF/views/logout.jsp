<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    // Invalidate the session to log out the user
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logging Out...</title>
    <meta http-equiv="refresh" content="2;url=/" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .logout-message {
            background: #fff;
            padding: 2rem 3rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .logout-message h2 {
            color: #4a90e2;
            margin-bottom: 1rem;
        }
        .logout-message p {
            color: #555;
        }
    </style>
</head>
<body>
    <div class="logout-message">
        <h2>You have been logged out</h2>
        <p>Redirecting to login page...</p>
    </div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SIP Tool - Search Results</title>
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 4rem auto;
            background-color: white;
            padding: 3rem;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 2rem;
        }

        .result-item {
            background: #f1f4f8;
            margin-bottom: 1rem;
            padding: 1rem 1.5rem;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .result-item:hover {
            background-color: #e0e7f1;
        }

        .result-item a {
            text-decoration: none;
            color: #007bff;
            font-size: 1.1rem;
            font-weight: 600;
        }

        .result-item a:hover {
            text-decoration: underline;
        }

        .no-results {
            text-align: center;
            color: #777;
            font-style: italic;
            margin-top: 2rem;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 2rem;
        }

        .back-link a {
            color: #4a90e2;
            font-weight: bold;
            text-decoration: none;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2><i class="fas fa-list-ul"></i> Search Results</h2>

    <c:choose>
        <c:when test="${not empty results}">
            <c:forEach var="sip" items="${results}">
                <div class="result-item">
                    <a href="/view/${sip.id}">
                        <i class="fas fa-box-open"></i>
                        ${sip.productName} - <small>${sip.category}</small>
                    </a>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p class="no-results"><i class="fas fa-exclamation-circle"></i> No results found.</p>
        </c:otherwise>
    </c:choose>

    <div class="back-link">
        <a href="/view/category"><i class="fas fa-arrow-left"></i> Back to Home</a>
    </div>
</div>
</body>
</html>

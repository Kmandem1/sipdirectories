<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${sip.productName} - Details</title>
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
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

        .detail-item {
            margin: 1rem 0;
            font-size: 1.05rem;
            color: #555;
        }

        .detail-item i {
            color: #4a90e2;
            margin-right: 0.5rem;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 2rem;
        }

        .back-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2><i class="fas fa-box-open"></i> ${sip.productName} Details</h2>

    <div class="detail-item"><i class="fas fa-tag"></i> <strong>Category:</strong> ${sip.category}</div>
    <div class="detail-item"><i class="fas fa-code-branch"></i> <strong>Version:</strong> ${sip.version}</div>
    <div class="detail-item"><i class="fas fa-dollar-sign"></i> <strong>Cost:</strong> $${sip.cost}</div>
    <div class="detail-item"><i class="fas fa-cubes"></i> <strong>Dependencies:</strong> ${sip.dependencies}</div>
    <div class="detail-item"><i class="fas fa-microchip"></i> <strong>Hardware:</strong> ${sip.hardwareComponents}</div>
    <div class="detail-item"><i class="fas fa-laptop-code"></i> <strong>Software:</strong> ${sip.softwareComponents}</div>
    <div class="detail-item"><i class="fas fa-truck"></i> <strong>Supplier:</strong> ${sip.supplier}</div>
    <div class="detail-item"><i class="fas fa-industry"></i> <strong>Manufacturer:</strong> ${sip.manufacturer}</div>
    <div class="detail-item"><i class="fas fa-info-circle"></i> <strong>Summary:</strong> ${sip.summary}</div>

    <div class="back-link">
        <a href="/view/category"><i class="fas fa-arrow-left"></i> Back</a>
    </div>
</div>
</body>
</html>

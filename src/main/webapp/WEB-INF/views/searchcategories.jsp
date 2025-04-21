<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SIP Tool - Search Categories</title>
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: #f0f2f5;
        }

        .container {
            max-width: 700px;
            margin: 4rem auto;
            background: white;
            padding: 3rem 2.5rem;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.08);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 2rem;
        }

        form div {
            display: flex;
            flex-direction: column;
            margin-bottom: 1.2rem;
        }

        label {
            margin-bottom: 0.4rem;
            color: #555;
            font-weight: 600;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        button {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #3a76c0;
        }

        a {
            color: #4a90e2;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .footer-link {
            text-align: center;
            margin-top: 2rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-search"></i> SIP Tool - Search Categories</h2>
        <form action="/search" method="get">
        <input type="hidden" name="category" value="${selectedCategory}" />
        
            <div>
                <label>Product Name:</label>
                <input type="text" name="productName" placeholder="Search by Product Name" />
            </div>
            <div>
                <label>Hardware Components:</label>
                <input type="text" name="hardwareComponents" placeholder="Search by Hardware Components" />
            </div>
            <div>
                <label>Software Components:</label>
                <input type="text" name="softwareComponents" placeholder="Search by Software Components" />
            </div>
            <div>
                <label>Version:</label>
                <input type="text" name="version" placeholder="Search by Version" />
            </div>
            <div>
                <label>Cost (USD):</label>
                <input type="text" name="cost" placeholder="Search by Cost" />
            </div>
            <div>
                <label>Supplier:</label>
                <input type="text" name="supplier" placeholder="Search by Supplier" />
            </div>
            <div>
                <label>Manufacturer:</label>
                <input type="text" name="manufacturer" placeholder="Search by Manufacturer" />
            </div>
            <div>
                <button type="submit"><i class="fas fa-search"></i> Search</button>
            </div>
        </form>

        <div class="back-link">
        <a href="/view/category"><i class="fas fa-arrow-left"></i> Back</a>
    </div>
    </div>
</body>
</html>

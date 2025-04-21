
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SIPLookUp - Categories</title>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e3831a00ca.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
        }
        .category-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            padding: 3rem 2rem;
        }
        .category-card {
            background: #ffffff;
            border-radius: 10px;
            width: 200px;
            height: 200px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            transition: transform 0.3s ease;
            cursor: pointer;
        }
        .category-card:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 20px rgba(0,0,0,0.2);
        }
        .category-card i {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #4a90e2;
        }
        .category-card span {
            font-size: 1.1rem;
            font-weight: bold;
        }
        h1 {
            text-align: center;
            margin-top: 2rem;
            color: #333;
        }
    </style>
</head>
<body>

<h1>Select a Category</h1>
<div class="category-container">

    <div class="category-card" onclick="goToSearch('Appliances')">
        <i class="fas fa-blender"></i>
        <span>Appliances</span>
    </div>

    <div class="category-card" onclick="goToSearch('Cars')">
        <i class="fas fa-car-side"></i>
        <span>Cars</span>
    </div>

    <div class="category-card" onclick="goToSearch('Home and Office Products')">
        <i class="fas fa-chair"></i>
        <span>Home & Office</span>
    </div>

    <div class="category-card" onclick="goToSearch('Apparel')">
        <i class="fas fa-tshirt"></i>
        <span>Apparel</span>
    </div>

    <div class="category-card" onclick="goToSearch('Wearables')">
        <i class="fas fa-watch-smart"></i>
        <span>Wearables</span>
    </div>
    <div class="back-link">
        <a href="/view/home"><i class="fas fa-arrow-left"></i> Back</a>
    </div>

</div>

<script>
    function goToSearch(category) {
        // Pass the category as a query parameter
        window.location.href = '/view/searchcategories?category=' + encodeURIComponent(category);
    }
</script>

<script src="/assets/js/script.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>

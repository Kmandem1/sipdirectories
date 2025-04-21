<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compare Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('/assets/images/compare-bg.jpg'); /* Update this path if needed */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            background: rgba(0, 0, 0, 0.6);
            margin: 50px auto;
            padding: 30px;
            max-width: 800px;
            border-radius: 10px;
        }

        h2, h3 {
            text-align: center;
            color: #ffe082;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        select, input[type="submit"] {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            margin-bottom: 15px;
            border: none;
        }

        input[type="submit"] {
            background-color: #ffd54f;
            color: #000;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ffca28;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            color: #000;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #ffecb3;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Compare Products</h2>

        <form action="/compare" method="get">
            <label>Select Category:</label>
            <select name="category" onchange="this.form.submit()">
                <option value="">-- Select Category --</option>
                <c:forEach var="cat" items="${categories}">
                    <option value="${cat}" ${selectedCategory == cat ? "selected" : ""}>${cat}</option>
                </c:forEach>
            </select>
        </form>

        <c:if test="${not empty selectedCategory}">
            <form action="/compare/result" method="get">
                <input type="hidden" name="category" value="${selectedCategory}" />
                <label>Product 1:</label>
                <select name="product1Id">
                    <c:forEach var="product" items="${products}">
                        <option value="${product.id}">${product.productName}</option>
                    </c:forEach>
                </select>

                <label>Product 2:</label>
                <select name="product2Id">
                    <c:forEach var="product" items="${products}">
                        <option value="${product.id}">${product.productName}</option>
                    </c:forEach>
                </select>

                <input type="submit" value="Compare">
            </form>
        </c:if>

        <c:if test="${not empty comparison}">
            <h3>Comparison Result</h3>
            <table>
                <tr><th>Field</th><th>Product 1</th><th>Product 2</th></tr>
                <tr><td>Product Name</td><td>${comparison.product1.productName}</td><td>${comparison.product2.productName}</td></tr>
                <tr><td>Hardware</td><td>${comparison.product1.hardwareComponents}</td><td>${comparison.product2.hardwareComponents}</td></tr>
                <tr><td>Software</td><td>${comparison.product1.softwareComponents}</td><td>${comparison.product2.softwareComponents}</td></tr>
                <tr><td>Version</td><td>${comparison.product1.version}</td><td>${comparison.product2.version}</td></tr>
                <tr><td>Cost</td><td>${comparison.product1.cost}</td><td>${comparison.product2.cost}</td></tr>
                <tr><td>Supplier</td><td>${comparison.product1.supplier}</td><td>${comparison.product2.supplier}</td></tr>
                <tr><td>Manufacturer</td><td>${comparison.product1.manufacturer}</td><td>${comparison.product2.manufacturer}</td></tr>
            </table>
        </c:if>

        <a href="/view/home">Back to Home</a>
    </div>
</body>
</html>
